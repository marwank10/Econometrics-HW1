
> load("~/Downloads/d_HHP2020_24.Rdata")
> ##    Age Gender    Education Mar_Stat income_midpoint  Race
  > ## 1   34 female college grad  Married           62500 white
  > ## 2   65   male some college divorced           30000 white
  > ## 3   44 female college grad  Married          225000 other
  > ## 4   56   male some college divorced           12500 white
  > ## 5   57 female   adv degree    never           62500 white
  > ## 6   44 female   adv degree  Married          125000 white
  > ## 7   37 female   adv degree  Married           62500 Black
  > ## 8   59   male college grad  Married           82500 white
  > ## 9   51 female        lt hs    never           12500 Black
  > ## 10  29 female    assoc deg  Married           40000 white
  > attach(d_HHP2020_24)
> summary(d_HHP2020_24)
Age           Gender              Education           Mar_Stat     
Min.   :17.00   male  :410536   lt hs       :  6787   Married  :556611  
1st Qu.:39.00   female:566464   some hs     : 14934   widowed  : 54162  
Median :52.00   trans :  1989   high school :122541   divorced :152705  
Mean   :52.25   other :  5801   some college:210698   separated: 17850  
3rd Qu.:65.00                   assoc deg   :103575   never    :195037  
Max.   :88.00                   college grad:279400   NA's     :  8425  
                                 adv degree  :246855                     
 income_midpoint     Race                Hispanic      Number_people_HH
 Min.   : 12500   white:806002   not Hispanic:895979   Min.   : 1.000  
 1st Qu.: 40000   Black: 80846   Hispanic    : 88811   1st Qu.: 2.000  
 Median : 82500   Asian: 48885                         Median : 2.000  
 Mean   : 95461   other: 49057                         Mean   : 2.715  
 3rd Qu.:125000                                        3rd Qu.: 4.000  
 Max.   :225000                                        Max.   :10.000  
 NA's   :187771                                                        
Number_kids_HH  Number_adults_HH                    private_health_ins
Min.   :0.000   Min.   : 1.000   0                           : 74413  
1st Qu.:0.000   1st Qu.: 2.000   has private health insurance:607599  
Median :0.000   Median : 2.000   no private health insurance :149384  
Mean   :0.623   Mean   : 2.092   NA's                        :153394  
 3rd Qu.:1.000   3rd Qu.: 2.000                                        
 Max.   :5.000   Max.   :10.000                                        
                                                                       
                   public_health_ins                             work_kind     
 0                          : 74413   employed by govt                : 96450  
 has public health insurance:302958   employed by private co          :320047  
 no public health insurance :425600   employed by nonprofit or charity: 74364  
 NA's                       :181819   self employed                   : 68547  
work for family business        : 11698  
NA's                            :413684  
                                                                               
                              workloss      income_midpoint_factor
 yes recent household loss of work:171404   125000 :145006        
 no                               :794667   62500  :134183        
 NA's                             : 18719   82500  :112727        
225000 : 92900        
40000  : 85421        
(Other):226782        
NA's   :187771        
           State              Region                 Census_division  
 California   : 71958   South    :317309   South Atlantic    :173111  
 Texas        : 49059   West     :310873   Pacific           :160919  
 Washington   : 37615   Northeast:151554   Mountain          :149954  
 Florida      : 33825   Midwest  :205054   West North Central:104736  
 Michigan     : 26479                      East North Central:100318  
 Massachusetts: 26236                      West South Central: 89496  
 (Other)      :739618                      (Other)           :206256  
      DOWN           ANXIOUS           WORRY           INTEREST     
 Min.   :1.00     Min.   :1.00     Min.   :1.00     Min.   :1.00    
 1st Qu.:1.00     1st Qu.:1.00     1st Qu.:1.00     1st Qu.:1.00    
 Median :1.00     Median :2.00     Median :1.00     Median :1.00    
 Mean   :1.63     Mean   :1.91     Mean   :1.72     Mean   :1.65    
 3rd Qu.:2.00     3rd Qu.:2.00     3rd Qu.:2.00     3rd Qu.:2.00    
 Max.   :4.00     Max.   :4.00     Max.   :4.00     Max.   :4.00    
 NA's   :108234   NA's   :106951   NA's   :108419   NA's   :108683  
      YEAR         Begin_Date             K4SUM       
 Min.   :20.00   Min.   :2020-04-23   Min.   : 4.00   
 1st Qu.:20.00   1st Qu.:2020-12-09   1st Qu.: 4.00   
 Median :22.00   Median :2022-04-27   Median : 6.00   
 Mean   :21.73   Mean   :2022-05-03   Mean   : 6.91   
 3rd Qu.:23.00   3rd Qu.:2023-08-23   3rd Qu.: 8.00   
 Max.   :24.00   Max.   :2024-07-23   Max.   :16.00   
                                      NA's   :111831  
> summary(Age[Gender == "female"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
17.00   39.00   52.00   51.62   64.00   88.00 
> summary(Age[Gender == "male"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
17.00   40.00   54.00   53.29   67.00   88.00 
> summary(Age[Gender == "trans"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
17.00   26.00   31.00   36.02   41.00   88.00 
> summary(Age[Gender == "other"])
Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
17.00   31.00   43.00   45.88   59.00   88.00 
> mean(Age[Gender == "female"])
[1] 51.61668
> sd(Age[Gender == "female"])
[1] 15.59165
> mean(Age[Gender == "male"])
[1] 53.28593
> sd(Age[Gender == "male"])
[1] 16.28551
> table(Number_people_HH, private_health_ins)
private_health_ins
Number_people_HH      0 has private health insurance no private health insurance
1   12378                       104944                       37271
2   26967                       237379                       56524
3   12952                       104413                       22326
4   11996                        95522                       15663
5    5737                        40425                        8923
6    2495                        15581                        4468
7     880                         5167                        1985
8     378                         2110                         982
9     154                          749                         396
10    476                         1309                         846
> table(Number_people_HH, public_health_ins)
public_health_ins
Number_people_HH      0 has public health insurance no public health insurance
1   12378                       74217                      66682
2   26967                      142039                     143687
3   12952                       37129                      82401
4   11996                       23552                      80062
5    5737                       13354                      33202
6    2495                        6715                      12377
7     880                        2887                       4021
8     378                        1363                       1638
9     154                         553                        571
10    476                        1149                        959
> aggregate(cbind(ANXIOUS, WORRY, DOWN, INTEREST) ~ Number_people_HH,
            +           data = d_HHP2020_24, FUN = mean, na.rm = TRUE)
Number_people_HH  ANXIOUS    WORRY     DOWN INTEREST
1                 1 1.893517 1.712798 1.698325 1.719044
2                 2 1.804797 1.633036 1.558793 1.577282
3                 3 1.993832 1.790961 1.680542 1.689036
4                 4 2.002787 1.776699 1.645361 1.653393
5                 5 2.019180 1.814426 1.679046 1.687860
6                 6 2.027132 1.834111 1.715872 1.721511
7                 7 2.047613 1.868029 1.739721 1.766777
8                 8 2.064375 1.894435 1.777687 1.784779
9                 9 2.069534 1.914695 1.800000 1.809319
10               10 2.137020 2.015851 1.943994 1.956675

Some interesting insights from the dataset are that smaller households with 1-2 people are more likely to have private health insurance and larger 
households may struggle accessing private coverage, due to income constraints. Also, smaller households report lower averages of anxiety and worry 

Questions
1 - Do people in certain jobs (government, private company, nonprofit, self-employed) report more anxiety or worry?
2 - Do people with higher education levels have more access to private insurance?
3 - Is there a relationship between the number of kids in a household and mental health? 
