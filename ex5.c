typedef volatile unsigned short hword;

#define VRAM 0x06000000;
#define KEY 0x04000130;
#define WHITE 0x07FF;
#define BRACK 0x0000;
#define BLUE 0x7C00;
#define GREEN 0x03E0;
#define RED 0x001F;
#define AAA 0x111F;
int mino_width;

void draw_square (hword, hword, hword);
void create_mino1(hword, hword, hword);
void create_mino2(hword, hword, hword);
void create_mino3(hword, hword, hword);
void create_mino4(hword, hword, hword);
void move_mino();

void second();
void create_wall();
int main(void) {
	hword *ptr;
	hword color;
	hword key;
	hword *key_ptr;
	hword button_start;
	key_ptr = (hword*)KEY;
	key = *key_ptr;
	button_start = 0x0008;
	color = BRACK;
	ptr = (hword*)0x04000000;
	*ptr = 0x0F03;
	
	ptr = (hword*)VRAM;
	
	int i;
	
	for (i = 0; i < 240*160; i++) {
		*ptr = color;
		ptr += 1;
	}
	while(1){
		key_ptr = (hword*)KEY;
		key = *key_ptr;
		if ((key&button_start)!=button_start){
			second();
		}  
	}
	return 0;
}

void second(){
	hword *ptr;
	hword color;	
  hword x;
  hword y;
	hword key;
	hword *key_ptr;
  x = 86;
  y = 20;
	color = WHITE;
	
	

	ptr = (hword*)VRAM;
	
	int i;
	int a;
	a=0;
	
	for (i = 0; i < 240*160; i++) {
		*ptr = color;
		ptr += 1;
	}
	
	create_wall();
	
	while (1) {
		a++;
		move_mino(a);
		a = a==4? a-4:a;
	}
}


void draw_square (hword x, hword y, hword color){ 
 	hword *ptr;
   int i;
   int j;
	ptr = (hword*)VRAM;
	ptr+=240*y+x;
  for (i=0; i<5; i++) {
    for (j=0; j<5; j++) {
      *ptr = color;
      ptr +=1;
    }
    ptr += 235;
  }
}

void create_wall() {
	int i;
	hword x1;
	hword x2;
	hword y;
	hword color;
	color = BRACK;
	x1 = 80;
	x2 = 158;
	y = 20;
	for (i = 0; i < 23; i++) {
		draw_square(x1, y + i * 6, color);
		draw_square(x2, y + i * 6, color);
	}
	y += 22 * 6;
	for (i = 0; i < 13; i++) {
		draw_square(x1 + i * 6,y, color);
	}
}

void create_mino(hword x, hword y, int a, int b) {
	hword color;
	if (a==1){
		color = GREEN;
		if (b == 0){color =WHITE}
		create_mino1(x, y,color);
	} else if (a == 2){
		color = RED;
		if (b == 0){color =WHITE}
		create_mino2(x, y,color);
	}else if (a == 3){
		color = BLUE;
		if (b == 0){color =WHITE}
		create_mino3(x, y,color);
	}else if (a == 4){
		color = AAA;
		if (b == 0){color =WHITE}
		create_mino4(x, y,color);
	}
	
}
void create_mino1(hword x, hword y, hword color) {
	draw_square(x, y, color);
	draw_square(x, y - 6, color);
	draw_square(x + 6, y, color);
	draw_square(x + 6, y - 6, color);
}
void create_mino2(hword x, hword y, hword color) {
	draw_square(x, y, color);
	draw_square(x , y - 6, color);
	draw_square(x + 6, y - 12, color);
	draw_square(x + 6, y - 6, color);
}
void create_mino3(hword x, hword y, hword color) {
	draw_square(x, y, color);
	draw_square(x + 12, y , color);
	draw_square(x + 6, y, color);
	draw_square(x + 6, y - 6, color);
}
void create_mino4(hword x, hword y, hword color) {
	draw_square(x, y, color);
	draw_square(x + 12, y, color);
	draw_square(x + 6, y, color);
	draw_square(x + 12, y - 6, color);
}

void move_mino(int a) {
		int x;
		int y;
		int i;
		int max_right;
		int max_left;
		int b;
		hword button_u;
		hword button_d;
		hword button_r;
		hword button_l;
		hword key;
		hword *key_ptr;
		hword *ptr;
		hword color1;	
		hword color2;	
		x = 122;
		y = 20;
		max_left = 89;
		max_right = (a==1)?145:138;
		button_u = 0x0040;
		button_d = 0x0080;
		button_r = 0x0010;
		button_l = 0x0020;
		color1 = BRACK;
		color2 = WHITE;
		key_ptr = (hword*)KEY;
		key = *key_ptr;
		if ((key & button_u) != button_u) {
			second();
		}
		while (y < 146) {
			key_ptr = (hword*)KEY;
			key = *key_ptr;
			if ((key & button_r) != button_r) {
				create_mino(x, y,a,0);
				if (x < max_right) {
					x += 6;
				}
				create_mino(x, y,a,1);

			}else if ((key & button_l) != button_l) {
				create_mino(x, y,a,0);
				if (max_left < x) {
					x -= 6;
				}
				create_mino(x, y,a,1);
			}
			for (i = 0; i < 100000; i++);
			create_mino(x, y,a,0);
			y += 6;
			create_mino(x, y,a,1);
			ptr = (hword*)VRAM;
			b = 240*(y+6) +x;
			ptr += b;
			if(*ptr!=0x07FF){break;}
			ptr += (a==2)?0:6;
			if(*ptr!=0x07FF){break;}
			ptr += (a==1||a==2)?0:6;
			if(*ptr!=0x07FF){break;}
		}
}