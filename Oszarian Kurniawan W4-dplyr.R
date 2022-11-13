#Week 4: dplyr package
?HairEyeColor

#Task: Write the function to get a dataset from Base R: HairEyeColor
#and give the dataset a new name of your choice
?HairEyeColor
hec <- data.frame(HairEyeColor)
hec

#See the top rows of the data
#TASK: Write the function to see the top rows of the data
head(hec)

#Install and call the package dplyr
#TASK: Write the functions to install and call dplyr

install.packages("dplyr")
library("dplyr")

#Let's just see the hair and sex columns
#Task: Write the function to 'select' just the hair and sex columns 
#(hint: use the 'select' function)
hec
hec %>% select(1, 3)

#Let's name the dataset with just the two columns, Hair and Sex
#TASK: Write the function to save the two columns as one new dataset
#and give it a name
hs <- hec %>% select(1, 3)
print(hs)

#Let's get rid of the Sex column in the new dataset created above
#TASK: Write the function that deselects the sex column
#(hint: use the 'select' function to not select a -column)
h <- hs %>% select(-c(2))
print(h)

#Let's rename a column name
#TASK: Write the function that renames 'sex' to 'gender'
colnames(hec)[3] <- "Gender"
print(hec)

#Let's make a new dataset with the new column name
#TASK: Write the function that names a new dataset that includes the 'gender' column
hecg <- hec

#Let's 'filter' just the females from our dataset
#TASK: Write the function that includes only rows that are 'female'
fem <- hecg %>% filter(Gender == "Female")
print(fem)
#Let's 'group' our data by gender
#TASK: Write the function to group the data by gender (hint: group_by)
gend <- group_by(hecg, Gender)
print(gend)

#Let's see how many students were examined in the dataset (total the frequency)
#TASK: replace 'datasetname' with the name of your dataset and get the total
#TASK: After you run it, write the total here: 592
total=mutate(hecg, total=cumsum(Freq))


#Since we have a females dataset, let's make a males dataset
#TASK: Write the function that includes only rows that are 'male'
male <- hecg %>% filter(Gender == "Male")
print(male)

#And now let's join the males and females
#TASK: Write the function that joins the male and female rows 
#(hint: try using 'union' or 'bind_rows')
uni <- union(fem, male)
print(uni)

#Optional Task: add any of the other functions 
#you learned about from the dplyr package

#Arrange the data according to "Hair" in descending order
hecg %>% arrange(desc(Hair))


