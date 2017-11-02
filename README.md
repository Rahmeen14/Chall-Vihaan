# CHALL
## VIHAAN DTU

### A Project on Fraud Risk Management

The project aims to detect fraudulent transactions by looking at past records of the person making transaction.We use anomaly detection to find any possible fraudulent transaction.

India is one of a few countries where RBI has made it mandatory to send out an OTP for any online card transactions. But if you have been to US or transacted via your cards to companies based in US, you are not asked for any OTP, just card number and cvv works.
This is clearly a way that can be exploited by fraudsters to make big bucks.

Thus our project aims at providing the banks a way to analyse the transactions using the method of **anomaly detection** of Machine Learning to classify a transaction between a safe transaction or a suspicious transaction that would require identity authentication to proceed.

We have considered several factors to analyse like transaction amounts, the location from where transactions are initiated, the type of purchases and services you generally pay for, the time that you generally initiate a transaction. While these little things might seem stupid but they can help a large number of customers from losing out their preciously earned money.

## PREREQUISITES

```
Node Js
NPM
Python
MATLAB/OCTAVE
```

> We have used Python to Interact between Node JS and Octave. If you know a better method, feel free to create a new issue and post a PR

To run this
```
clone this repo
cd into this repo
npm install
node app.js
```

Open Your favourite browser and go to ```localhost:3000``` to access this site  

This Project was made collectively by
[Anshul](https://www.github.com/nshul),    [Rahmeen](https://www.github.com/rahmeen14), [Akshita Aggarwal](https://www.github.com/akshitaag), [Sarthak Tandon](https://www.github.com/sarthak0120)


The Octave code can be found in the code folder in routes.

There is a python file with the name of **initiate.py** that has been used to create bridge between Octave and NodeJS because they cannot interact directly.
