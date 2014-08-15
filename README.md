RGCoreDataStack
===============

A nice easy to use/yet powerful core data stack. 
The default Core Data stack provided by apple is kinda messy in a couple of ways.
1) it's created in the app delegate! this means that the user has to pass the managed object context form one view controller to another. I've created a singleton to sovle that issue. 
2) in the core data stack that apple provides any saves are done on the main thread! slowing your app down ! RGCoreDataStack let's you do your saves on a  bacgkround thread and then they will appear on your mean thread for your main moc to use to feed your UI. 

