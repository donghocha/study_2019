#library(ggplot2)
Frequency_Allocation_Table <- read_excel("Frequency_Allocation_Table_korea.xlsx")
df_0 <- Frequency_Allocation_Table


theme_set(theme_gray(base_family = "AppleGothic")) # 한글 encoding 설정 for MAC OS 
par(family="AppleGothic")


xx1 <- df_0['Start_Freq_Hz']
xx2 <- df_0['End_Freq_Hz']
yy1 <- df_0['Rank']
yy2 <- df_0['Rank'] + 1
tt <- df_0['Order']
rr <- df_0['Service']


# d = data.frame(x1=c(1,3,1,4,4), x2=c(2,4,3,6,6), y1=c(1,1,4,1,3), y2=c(2,2,5,3,5), t=c('a', 'a', 'a', 'b', 'b'), r=c(1,2,3,4,5))
d = data.frame(x1 = xx1, x2 = xx2, y1 = yy1, y2 = yy2,t = tt, r = rr)

ggplot() + 
  scale_x_log10(name="x") +
  scale_y_continuous(name="y") +
  geom_rect(data=d, mapping=aes(xmin=Start_Freq_Hz, xmax=End_Freq_Hz, ymin=Rank, ymax=Rank.1, fill=Service), color="black", alpha=0.5)
  #geom_rect(data=d, mapping=aes(xmin=Start_Freq_Hz, xmax=End_Freq_Hz, ymin=Rank, ymax=Rank.1), color="black", alpha=0.5)
# +
#geom_rect(data=d, mapping=aes(xmin=x1, xmax=x2, ymin=y1, ymax=y2, fill=t), color="black", alpha=0.5) +
#geom_text(data=d, aes(x=Start_Freq_Hz+(End_Freq_Hz-Start_Freq_Hz)/2, y=Rank+(Rank.1-Rank)/2, label=r), size=4)

