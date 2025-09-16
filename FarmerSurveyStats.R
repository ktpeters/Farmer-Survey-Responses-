{r}
install.packages("tidyverse")

# read in data 
d <- read.csv("baseline_non_PII.csv")

#First we aim to understand the statistics associated with plot size. Many farmers have more than one plot (could be non-contiguous), where only one was enrolled in this carbon credit program.
d |>
  summarize(freq = n(),
            min_inc = min(income),
            max_inc = max(income),
            avg_inc = mean(income))

