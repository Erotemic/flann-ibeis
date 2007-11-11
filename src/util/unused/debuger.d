/*
Project: _aggnn
*/


import std.c.stdio;

class Debuger {
	
static:
	FILE* fout;
	FILE* fout2;
	
	static this() {
		fout = fopen("debug.out","w");
		fout2 = fopen("debug2.out","w");
	}
	
	void print_point(float *point, int len) 
	{
		for (int i=0;i<len;++i) {
			fprintf(fout,"%f ",point[i]);
		}
		fprintf(fout,"\n");
	} 

	void print_point_pair(float *point1, float *point2, int len) 
	{
		for (int i=0;i<len;++i) {
			fprintf(fout2,"%f ",point1[i]);
		}
		for (int i=0;i<len;++i) {
			fprintf(fout2,"%f ",point2[i]);
		}
		fprintf(fout2,"\n");
	} 


}