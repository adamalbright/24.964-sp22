# Plot rankings for GLA output files

rankings = read.table("VoicingAssim-CCC.tsv.rankings", header=TRUE, sep="\t", quote="", comment.char="")
maxtime = 125000
ymin = 0
ymax = 200

rankings = head(rankings,maxtime)

# Get some colors for the plots
colors <- rainbow(ncol(rankings)-1)
par(mar=c(4,4,.5,.5))
plot(rankings$Time, rankings[,3],type="n",xlab="Time",ylab="Ranking value",ylim=c(ymin,ymax),xlim=c(0,maxtime),axes=FALSE)
axis(1,at=seq(0,nrow(rankings),by=10))
axis(2,at=seq(ymin,ymax))
box()
for (i in 3:ncol(rankings))
{
  lines(rankings$Time, rankings[,i],col=colors[i-2],lwd=2)
}
legend(0,ymax,legend=colnames(rankings)[3:ncol(rankings)], col=colors[3:ncol(rankings)-2], lty=1, bty="n")