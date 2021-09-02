tweep(jill). 
tweep(eric). 
tweep(jose). 
tweep(joe). 
tweep(anna).

tweet(gossip).
tweet(policy).
tweet(declaration).
tweet(greeting).
tweet(screed).

tweets(jill, greeting).
tweets(anna, gossip).
follows(eric, jill).
follows(joe, anna).
follows(eric, joe).
follows(jill, joe).

receives(Tweep, What) :-
  tweets(Who, What), 
  follows(Tweep, Who).

