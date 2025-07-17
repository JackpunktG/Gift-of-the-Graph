# Gift of the Graph

I love graphs. So I built a wee program that will automatically take some sort of Dataset that I create in Haskell and export it as a .csv to graph straight into pythons matplotlib or plotly.
Thus, I can graph to my wildest dream. If I think something could be interesting, why not graph it and find out :)

Want to experiment with different types of graphs with different Datasets 

### From Last Prime

Run a script that looked x = number, y = how long since last time. So far up to x = 1000000.

![Complete Graph for x = 0 - 1000000](/Graphes/Graph_fromLastPrime1-1000000.png)

Some exciting take aways:
- 492226 is the furthest from the previous prime (492113) with y = 113 
- meaning 492170 is the furthest away from any Prime (counting both directions), 56 non-prime numbers in each direction
- Honerable mention for 370372, with y = 111, the only two strings the got over 100
- Average distance from last prime = ~10.02, not including primes ~10.87. I wonder if this tends towards a limit?

![y > 20](/Graphes/ybigger_than20.png)

##### Frequency of the number of time

![Spread](/Graphes/Prime_spread.png)

Interesting, after taking the sum of each Last prime number - we find they are in pairs!
I guess this makes sence as we need to get to the next odd number to have a chance at the next Prime
- Does it always follow with curve at the number increases?