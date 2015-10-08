# This script aims to assess how many wins are required to reach the playoffs
# Script requires gdata package

# Set right directory
setwd("C:/Users/User/Documents/introtobda/introtobda/introtobda/ProjectGroupRBN")

# Read data from csv files
Teamstats2013 <- read.csv("Teamstats2013.csv", header = TRUE, sep = ",")
Teamstats2014 <- read.csv("Teamstats2014.csv", header = TRUE, sep = ",")
Teamstats2015 <- read.csv("Teamstats2015.csv", header = TRUE, sep = ",")

# Compute basic statistics
NoTeams13 <- length(Teamstats2013$Rk)
NoPlayoffs13 <- sum(Teamstats2013$Playoffs == '1')
NoTeams14 <- length(Teamstats2014$Rk)
NoPlayoffs14 <- sum(Teamstats2014$Playoffs == '1')
NoTeams15 <- length(Teamstats2015$Rk)
NoPlayoffs15 <- sum(Teamstats2015$Playoffs == '1')

# Determine number of wins by playoff teams
PlayoffTeams13 <- which(Teamstats2013$Playoffs == 1)
NonPlayoffTeams13 <- which(Teamstats2013$Playoffs == 0)
PlayoffTeamWins13 <- Teamstats2013$Wins[PlayoffTeams13]
NonPlayoffTeamWins13 <- Teamstats2013$Wins[NonPlayoffTeams13]
PlayoffTeams14 <- which(Teamstats2014$Playoffs == 1)
NonPlayoffTeams14 <- which(Teamstats2014$Playoffs == 0)
PlayoffTeamWins14 <- Teamstats2014$Wins[PlayoffTeams14]
NonPlayoffTeamWins14 <- Teamstats2014$Wins[NonPlayoffTeams14]
PlayoffTeams15 <- which(Teamstats2015$Playoffs == 1)
NonPlayoffTeams15 <- which(Teamstats2015$Playoffs == 0)
PlayoffTeamWins15 <- Teamstats2015$Wins[PlayoffTeams15]
NonPlayoffTeamWins15 <- Teamstats2015$Wins[NonPlayoffTeams15]

# Plot 2013
xrange = seq(0,80,1)
hv113 = hist(PlayoffTeamWins13,breaks=xrange,plot=F)$counts
hv213 = hist(NonPlayoffTeamWins13,breaks=xrange,plot=F)$counts
maintitle = "Number of Wins per team for Playoffs 2013"
xtitle = "Number of games won"
ytitle = "Frequency"
barplot(rbind(hv113,hv213),col=3:2,names.arg=xrange[-1],xlab=xtitle,ylab=ytitle,
        legend.text=c("Playoff Teams","Non Playoff Teams"),main=maintitle)

# Plot 2014
hv114 = hist(PlayoffTeamWins14,breaks=xrange,plot=F)$counts
hv214 = hist(NonPlayoffTeamWins14,breaks=xrange,plot=F)$counts
maintitle = "Number of Wins per team for Playoffs 2014"
barplot(rbind(hv114,hv214),col=3:2,names.arg=xrange[-1],xlab=xtitle,ylab=ytitle,
        legend.text=c("Playoff Teams","Non Playoff Teams"),main=maintitle)

# Plot 2015
hv115 = hist(PlayoffTeamWins15,breaks=xrange,plot=F)$counts
hv215 = hist(NonPlayoffTeamWins15,breaks=xrange,plot=F)$counts
maintitle = "Number of Wins per team for Playoffs 2015"
barplot(rbind(hv115,hv215),col=3:2,names.arg=xrange[-1],xlab=xtitle,ylab=ytitle,
        legend.text=c("Playoff Teams","Non Playoff Teams"),main=maintitle)









