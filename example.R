


library(spatstat)

A4_WIDTH <- 8.3
A4_HEIGHT <- 11.7 

pdf(file = "background-spatial-point-pattern-example.pdf", A4_WIDTH, 0.5*A4_HEIGHT)

# par(mfrow=c(1,3)) 

par(fig=c(0,0.6,0,1.0), new=TRUE)
M <- persp(bei.extra$elev, theta=-45, phi=18, expand=5, border=NA, apron=TRUE, shade=0.3, box=FALSE, visible=TRUE, main="Trees")
perspPoints(bei, Z=bei.extra$elev, M=M, pch=16, cex=0.3)


par(fig=c(0.45,1.0,0,0.6), new=TRUE)
plot(bei.extra$grad, main="Elevation Gradient")
plot(bei, add=TRUE, pch=16, cex=0.3)
par(fig=c(0.45,1.0,0.4,1.0), new=TRUE)
plot(bei.extra$elev, main="Elevation")
plot(bei, add=TRUE, pch=16, cex=0.3)
dev.off()


# Add boxplots to a scatterplot
par(fig=c(0,0.8,0,0.8), new=TRUE)
plot(mtcars$wt, mtcars$mpg, xlab="Car Weight",
     ylab="Miles Per Gallon")
par(fig=c(0,0.8,0.55,1), new=TRUE)
boxplot(mtcars$wt, horizontal=TRUE, axes=FALSE)
par(fig=c(0.65,1,0,0.8),new=TRUE)
boxplot(mtcars$mpg, axes=FALSE)
mtext("Enhanced Scatterplot", side=3, outer=TRUE, line=-3)