# Midterm Spring 2020 April 28

# Create your full name to variable 'my_fullname'
my_fullname <- "SeungJin_Cho"

# Create your student number to variable 'my_std_no'
my_std_no <- 14010161

# Honor Policy. For this exam, you must work alone. 
# You may not aid or accept aid from other students.

# You may also consult any other non-human resources you want 
# including the course textbook, handouts, your notes, other books, and on-line materials. 

# Directions. 
# The midterm exam is separated into two parts. 
# The part I is about short answer questions.
# Part I : Answer the following the questions.
# The function 'cat' must be used instead of the function 'print'.
# For example
i_v = 1
print('Print', i_v) # return no value!
cat('Print', i_v) # return it with value!


# 1. What does CRAN stand for ?
cat('What does CRAN stand for ?', 'Comprehensive R Archive Network')

# 2. What is the mot important thing in Data Science?
cat('What is the mot important thing in Data Science?', 'The question you are trying to answer')

# 3. I am done editing a file, I need to _______ those changes then _______ them, and _______ it to the __________ .
cat('I am done editing a file, I need to _______ those changes then _______ them, and _______ it to the __________ .', 'commit, merge, push, repository')



#
#The part II is about implementing R programs which look alike assignments you did in our class. 
#
setwd("sources")
ds.titanic.survival <- read.csv("TitanicSurvival.csv", stringsAsFactors = FALSE)

# Answer the each 
cat('The number of columns is ', ncol(ds.titanic.survival))
cat('The number of rows is ', nrow(ds.titanic.survival))

#1.  What is the rate of female and male in Titanic Survival data set?
# (IMPORTANT! : your result will look like 'The female rate is xxxx.xxx'
#                                            The male rate is xxx.xxx')
# That is, your R program must include print('The female rate is ', your_female_rate)
# cat('The male rate is ', your_male_rate) at the end.

# Look at the ds.titanic.survival in detail

cat('The female rate is ', table(ds.titanic.survival$sex)[1]/nrow(ds.titanic.survival)*100)
cat('The male rate is ', table(ds.titanic.survival$sex)[2]/nrow(ds.titanic.survival)*100)

print(table(ds.titanic.survival$sex)[1]/nrow(ds.titanic.survival)*100)
print(table(ds.titanic.survival$sex)[2]/nrow(ds.titanic.survival)*100)

# 2. What is the Q1, mean, median, Q3, min and max in the Titanic Survival age?
# and graph the box plot of age data.

summary(ds.titanic.survival$age)        #It shows Q1, mean, median, Q3, max, and min. Or, I can find out about it as shown below.
cat('mean is', mean(ds.titanic.survival$age, na.rm = TRUE))


cat('The Q1 is', quantile(ds.titanic.survival$age, 0.25, na.rm = TRUE))
cat('The Q3 is ',  quantile(ds.titanic.survival$age, 0.75, na.rm = TRUE))
cat('The IQR is ', IQR(ds.titanic.survival$age, na.rm = TRUE))
cat('The outliers are ', box$out)

box=boxplot(ds.titanic.survival$age)

# 3. What is the variation, standard deviation, range and difference(max and min) of age in the Titanic Survival?

cat('The variation of age in the Titanic Survival is ', var(ds.titanic.survival$age,na.rm=TRUE))

cat('The standard deviation of age in the Titanic Survival is ', sd(ds.titanic.survival$age, na.rm = TRUE))

cat('The range of age in the Titanic Survival is ', range(ds.titanic.survival$age, na.rm=TRUE))
    
cat('The difference between max and min of age is ', max(ds.titanic.survival$age,na.rm=TRUE)-min(ds.titanic.survival$age,na.rm=TRUE))

# 4. Show the bar and pie graph by passenger class of the Titanic Survival.
# (title of bar graph is 'Passenger class in Titanic Survival')
barplot(height = as.numeric(table(ds.titanic.survival$passengerClass)), names.arg = names(table(ds.titanic.survival$passengerClass)))
pie(table(ds.titanic.survival$passengerClass))
  
# 5. Show the histogram of age in the Titanic Survival.
# (IMPORTANT! : number of breaks is 8.)
hist(ds.titanic.survival$age,breaks=8)

# 6. Show three boxplots of age from each passenger classes-1st, 2nd and 3rd at once.
boxplot(ds.titanic.survival$age~ds.titanic.survival$passengerClass)

.
# Good luck!

