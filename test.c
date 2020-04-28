#include <ncurses.h>

#include <stdio.h>
#include <string.h>
#include <stdbool.h>
#include <time.h>
#include <unistd.h>
#include <stdlib.h>

#include "stackshield.h"

//#define DELAY 100000
#define DELAY 100

// Christmas 2206

// ---------------------------------- unxhexlify ---------------------------------------
char a2v(char c)
{
    if ((c>='0')&&(c<='9'))
    {
        return c-'0';
    }
    if ((c>='a')&&(c<='f'))
    {
        return c-'a'+10;
    }
    else return 0;
}

void unhexlify(char *hstr, char *bstr)
{
    int j = 0;
    for (size_t i = 0; i < strlen(hstr); i += 2)
    {
        bstr[j++] = (a2v(hstr[i])<<4) + a2v(hstr[i+1]);
    }
    bstr[j] = '\0';
}
// --------------------------------------------------------------------------


char logo[] = "         *             , \n\
                       _/^\\_ \n\
                      <     > \n\
     *                 /.-.\\         *\n\
              *        `/&\\`                   *\n\
                      ,@.*;@,\n\
                     /_o.I %_\\    *\n\
        *           (`'--:o(_@;\n\
                   /`;--.,__ `')             *\n\
                  ;@`o %% O,*`'`&\\ \n\
            *    (`'--)_@ ;o %%'()\\      *\n\
                 /`;--._`''--._O'@;\n\
                /&*,()~o`;-.,_ `\"\"`)\n\
     *          /`,@ ;+& () o*`;-';\\ \n\
               (`\"\"--.,_0 +% @' &()\\ \n\
               /-.,_    ``''--....-'`)  *\n\
          *    /@%%;o`:;'--,.__   __.'\\ \n\
              ;*,&(); @ % &^;~`\"`o;@();         *\n\
              /(); o^~; & ().o@*&`;&%O\n\
        jgs   `\"=\"==\"\"==,,,.,=\"==\"===\"`\n\
           __.----.(\\-''#####---...___...-----._\n\
         '`         \\)_`\"\"\"\"\"`\n\
                 .--' ')\n\
               o(  )_-\\\n";


#define MIDDLE_COL(len) ((terminal_cols-len)/2)
int terminal_rows, terminal_cols;

void init() {
    setvbuf(stdin, 0LL, 2, 0LL);
    setvbuf(stdout, 0LL, 2, 0LL);
    setvbuf(stderr, 0LL, 2, 0LL);
    //initscr();
    newterm(NULL, stdout, stdin);
    start_color();
    init_pair(1,COLOR_RED, COLOR_BLACK);
    init_pair(2,COLOR_BLUE, COLOR_BLACK);
    init_pair(3,COLOR_MAGENTA, COLOR_BLACK);
    init_pair(4,COLOR_WHITE, COLOR_BLACK);
    init_pair(5,COLOR_GREEN, COLOR_BLACK);

    wbkgd(stdscr, COLOR_PAIR(5));
    getmaxyx(stdscr, terminal_rows, terminal_cols);
}

void title(char *msg, int row) {
    move(row, MIDDLE_COL(strlen(msg)));
    attron(A_BOLD);
    for (int i = 0; msg[i] != '\0'; i++) {
        addch(msg[i]);
        usleep(DELAY / 2);
        refresh();
    }
    attroff(A_BOLD);
}

void print_logo() {
    char msg1[] = "Christmas Management System";
    char msg2[] = "year 2206 (under development)";
    title(msg1, 0);
    title(msg2, 1);

    srand(time(0));
    int pad = 60;
    int x, y;
    move(2, MIDDLE_COL(pad));
    for (int i = 0; logo[i] != '\0'; i++) {
       if (logo[i] == '\n') {
            getyx(stdscr, y, x);
            move(y + 1, MIDDLE_COL(pad));
            continue; 
       }
       int color = rand() % 3 + 1;

        switch (logo[i]) {
            case '@':
                attron(A_BLINK | COLOR_PAIR(color));
                addch(logo[i]);
                attroff(A_BLINK | COLOR_PAIR(color));
                break;
            case '%':
                attron(A_DIM);
                addch(logo[i]);
                attroff(A_DIM);
                break;
            case 'O':
            case 'o':
                attron(A_BOLD | COLOR_PAIR(color));
                addch(logo[i]);
                attroff(A_BOLD | COLOR_PAIR(color));
                break;
            case '*':
                attron(COLOR_PAIR(4));
                addch(logo[i]);
                attroff(COLOR_PAIR(4));
            case '\n':
                break;
            default:
                addch(logo[i]);
                break;
        }
        usleep(DELAY / 50);
        refresh();
    }
    move(y + 2, 0);
    printw("Press any key to proceed to the login interface...");

    getch();
    endwin();
}

struct toy_t {
    char name[50];
    char description[5000];
};

struct user_t {
    char id_token[6];
    char key[33];

    void (*print_info)(struct user_t *self);
    void (*change_key)(struct user_t *self);
    void (*design_toy)(struct user_t *self);
    void (*view_toys)(struct user_t *self);

    size_t toys_cnt;
    struct toy_t *toys[100];
};

void default_print_info(struct user_t *self) {
    printf("ID: %s\nYour private key: ", self->id_token);
    for (int i = 0; i < 32; i++) {
        printf("%02x", ((unsigned char*)(self->key))[i]);
    }
    printf("\n");
}

void default_change_key(struct user_t *self) {
    char input_buf[90];
    char new_key[38];
    printf("Write new key: ");
    scanf("%89s", input_buf);
    unhexlify(input_buf, new_key);

    printf("\nUpdating encryption...\n");
    for (size_t i = 0; i < self->toys_cnt; i++) {
        for (size_t j = 0; j < 5000; j++) {
            self->toys[i]->description[j] ^= self->key[j % 32] ^ new_key[j % 32];
        }
    }

    for (size_t i = 0; i < 36; i++) {
        self->key[i] = new_key[i];
    }
    printf("Changes applied!\n");
}

void default_design_toy(struct user_t *self) {
    if (self->toys_cnt >= 100) return ;
    self->toys[self->toys_cnt++] = malloc(sizeof(struct toy_t));

    printf("Name: ");
    read(0, self->toys[self->toys_cnt - 1]->name, 99);
    printf("\nDescription: ");
    read(0, self->toys[self->toys_cnt - 1]->description, 4999);

    printf("Encrypting...\n");
    for (size_t i = 0; i < 5000; i++) {
        self->toys[self->toys_cnt - 1]->description[i] ^= self->key[i % 32];
    }
    printf("SAVING TO FILE NOT IMPLEMENTED YET!!!\n");
    printf("Done\n");
}

void default_view_toys(struct user_t *self) {
    printf("TODO: implement this\n");
}

void init_user(struct user_t* object, char *id_token, char *key) {
    memcpy(object->id_token, id_token, 6);
    memcpy(object->key, key, 33);
    object->print_info = default_print_info;
    object->change_key = default_change_key;
    object->design_toy = default_design_toy;
    object->view_toys = default_view_toys;
    object->toys_cnt = 0;
    for (int i = 0; i < 100; i++) {
        object->toys[i] = NULL;
    }
}

void debug_print(unsigned char *p) {
    printf("DEBUG %p: %s\n", p, p);
}

void print_menu() {
    printf("[WARN] this version of software is unstable and under development\n");
    printf("1. Show info (show)\n");
    printf("2. Change private key (change)\n");
    printf("3. Design toy (design)\n");
    printf("4. View toys (view)\n");
    printf("5. Request feature/report bug (report)\n");
    printf("6. Quit (quit)\n");
}

void quit(void (*save_session_handler)(struct user_t*), struct user_t *user) {
    if (save_session_handler != NULL) {
        save_session_handler(user);
    }

    exit(0);
}

void report() {
    char buf[64];
    memset(buf, 'X', 64);
    printf("Please write your request/bug report: \n");
    read(0, buf, 200);
    printf("Thank you!\n");
}

void session_handler(struct user_t *user) {
    printf("TODO: make this write user to file\n");
    return ;
}

void experimental(void (**save_session_handler)(struct user_t*)) {
    printf("Experimental features are going to be enabled!\n");
    *save_session_handler = &session_handler;
}

struct user_t g_user;
void dashboard(char *id_token, char *key) {
    init_user(&g_user, id_token, key);
    printf("Succesful login!\n");
    g_user.print_info(&g_user);

    char buffer[100];
    memset(buffer, 0, 99);
    void (*save_session_handler)(struct user_t*) = NULL;

    while (true) {

        print_menu();
        printf("> ");
        read(0, buffer, 99);

        if (strstr(buffer, "show")) {
            g_user.print_info(&g_user);
        } else if (strstr(buffer, "change")) {
            g_user.change_key(&g_user); 
        } else if (strstr(buffer, "design")) {
            g_user.design_toy(&g_user);
        } else if (strstr(buffer, "view")) {
            g_user.view_toys(&g_user);
        } else if (strstr(buffer, "report")) {
            report();
            printf("Great!\n");
        } else if (strstr(buffer, "quit")) {
            //memset(buffer, 0, 100);
            for (int i = 0; i < 80; i++) { buffer[i] = 0; }
            quit(save_session_handler, &g_user);
        } else if (strstr(buffer, "experimental")) {
            experimental(&save_session_handler);
        } else {
            printf("Command %s unknown\n", buffer);
        }
    }
}

char input[600];
void identify_agent() {
    FILE *f = fopen("key.txt", "r");
    char identity_token[65];
    char private_key[65];  
    fscanf(f, "%s", private_key);
    fclose(f);

    printf("--- Christmas Management System ---\n");
    printf("Identity token: ");
    scanf("%500s", input);
    
    unhexlify(input, identity_token);
    //memcpy(identity_token, ptr, strlen(input) / 2 + 1);

    for (int i = 0; i < 64 && identity_token[i] != '\0'; i++) {
        identity_token[i] ^= private_key[i];
    }
    
    char *p = strstr(identity_token, "idtok:");
    char *e = strstr(identity_token, "|");
    if (p == NULL || e == NULL) {
        printf("Invalid token...");
        return ;
    }
    e[0] = '\0';
    p = (char*)((size_t)p + strlen("idtok:"));
    if (strlen(p) != 5) {
        printf("Invalid id...");
        return ;
    }
    
    char id_token[64];
    memcpy(id_token, p, 6);
    e[0] = '|';
    
    char key[64];
    p = strstr(identity_token, "key:");
    if (p == NULL) {
        printf("Invalid key...");
        return ;
    }
    memcpy(key, (char*)((size_t)p + strlen("key:")), 32);

    dashboard(id_token, key);
}

int main() {
    init();
    
    print_logo();
    identify_agent(); 

    return 0;
}
