#include <ncurses.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main()
{
const int width = 50;
const int height = 50;
    initscr();
    curs_set(0);
    noecho();
    keypad(stdscr, TRUE);

    WINDOW *win = newwin(height, width, 0, 0);

    /*start_color();  





if (has_colors() && COLOR_PAIRS >= 13)
    {
        int n = 1;

        // Инициализация цветовых пар
        init_pair(1,  COLOR_RED,     COLOR_BLACK);
        init_pair(2,  COLOR_GREEN,   COLOR_BLACK);
        init_pair(3,  COLOR_YELLOW,  COLOR_BLACK);
        init_pair(4,  COLOR_BLUE,    COLOR_BLACK);
        init_pair(5,  COLOR_MAGENTA, COLOR_BLACK);
        init_pair(6,  COLOR_CYAN,    COLOR_BLACK);
        init_pair(7,  COLOR_BLUE,    COLOR_WHITE);
        init_pair(8,  COLOR_WHITE,   COLOR_RED);
        init_pair(9,  COLOR_BLACK,   COLOR_GREEN);
        init_pair(10, COLOR_BLUE,    COLOR_YELLOW);
        init_pair(11, COLOR_WHITE,   COLOR_BLUE);
        init_pair(12, COLOR_WHITE,   COLOR_MAGENTA);
        init_pair(13, COLOR_BLACK,   COLOR_CYAN);

        while (n <= 13)
        {
            color_set(n, NULL);
            waddch(win, 'X' | A_UNDERLINE | COLOR_PAIR(3));
            n++;
        }
 
    }
*/




    int x = 0;
    int y = 0;
     
	int x1 = 6;
	int y1 = 4;

    for (;;)
    {
        
        
        mvprintw(y, x, "X");

        mvprintw(y1, x1, "c"); 
        
        mvprintw(3, 3, "Y");

        waddch(win, 'X' | A_UNDERLINE | COLOR_PAIR(3));

        int ch = getch();
        if (ch == KEY_DOWN)  y++;
        if (ch == KEY_UP)    y--;
        if (ch == KEY_LEFT)  x--;
        if (ch == KEY_RIGHT) x++;



        if (y >= LINES) y--;
	if (x >= COLS) x--;
	if (x < 0) x++;
	if (y < 0) y++;


        if (y1 >= LINES) y1--;
	if (x1 >= COLS) x1--;
	if (x1 < 0) x1++;
	if (y1 < 0) y1++;

	


	if (y1-1 == y && x == x1) y1++;
	if (x1-1 == x && y == y1) x1++;
	if (y1+1 == y && x == x1) y1--;
	if (x1+1 == x && y == y1) x1--;
	
	
	
	
	

        clear();
        refresh();
    }
	
      
    endwin();
return 0;
}
