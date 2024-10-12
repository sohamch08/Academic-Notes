if(!settings.multipleView) settings.batchView=false;
settings.tex="pdflatex";
settings.inlinetex=true;
deletepreamble();
defaultfilename="mfcs_assignment_3-1";
if(settings.render < 0) settings.render=4;
settings.outformat="";
settings.inlineimage=true;
settings.embed=true;
settings.toolbar=false;
viewportmargin=(2,2);

size(200); defaultpen(linewidth(0.7)+fontsize(10)); int n = 17; real r = 1; real rad = pi/2; pair pt(real k=0) { return (r*expi(rad-2*pi*k/n)); } for(int i=0; i<n; ++i){ dot(pt(i)); draw(pt(i)--pt(i+1)); } draw(pt()--pt(8)); draw(pt()--pt(4)--pt(8),linewidth(0.7)+linetype("4 4")); draw(pt()--pt(2)--pt(4),linewidth(0.7)+linetype("4 4")); label("\(d\)",(pt()+pt(8))/2,WNW); label("\(\mathcal{Q}\)",(pt()+pt(6))/2,SE); label("\(\mathcal{R}\)",(pt()+pt(10))/2,W); label("\(P_0\)",pt(),N); label("\(P_1\)",pt(1),NNE); label("\(P_8\)",pt(8),S); label("\(P_{16}\)",pt(-1),NNW); label("\(\cdots\)",pt(2),NE);
