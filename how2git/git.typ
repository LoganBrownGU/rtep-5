
#show raw: it => {
  box(fill: gray.lighten(70%), outset: (x: 0em, y: 0.5em), inset: (x: 0.3em, y: 0em), it)
}

#set heading(numbering: "1.") 
#set par(justify: true)



#text(size: 24pt)[Everything u need 2 know about git]

Git and GitHub are different things. Git is the version control system, GitHub is the remote repository hosting system. As an analogy, git is a book, and GitHub is a library. 

Git can track ANY file type. If you ask me "can I put a PNG on git?" I will say yes. If you ask me "can I put a Latex file on git?" I will say yes. When you upload your brain to the computer, you can put it on git. 

When you run ```bash git clone git@github.com:/etc``` you create a local working copy of the repo. If you never type ```bash git clone``` or `pull` or `push` again, this will never change without you changing it. 

How 2 git/github: 

= Commits

When you commit, you create a version. Any commit can be later retrieved and the repo browsed at that point in the history. This is very very useful --- say you get something working, then break it later without realising, you can go back and see the working code. 

- *Make small, frequent commits*: The more frequent the better. This makes it easier to see the changes over time. 
- *Write informative commit messages*: you can't see where the code _was_ working if you have no way of knowing when that was.

Shit commit message (angry Logan):
```
Changes to main.cpp
```

Nice commit message (happy Logan):
```
Check argv length at start of main. 
Fixes issue with crashing from too many arguments
Closes #11
```

To make a commit: 

```bash
git add *     # Adds every file to commit
git commit    # Will open a text editor where you can write your commit message
```

You can add just specific files with ```bash git add file.txt```

If you intend to see your changes ever again in the corporeal realm, do not turn off your laptop without committing them. If you do not commit your changes, they will cease to exist when they are no longer observed. This is hyperbole, but you should treat it as fact.  

= Pushing and Pulling

Once you have made a commit, run ```bash git push``` to publish it to GitHub. It is rare that you shouldn't immediately push after making a commit. 

Before writing code, run ```bash git pull``` to acquire the most recent changes to your branch. If changes have been made from a different working copy then this will update your working copy. 

If you make changes and run ```bash git pull``` without committing, you may end up with this: 

```
error: Your local changes to the following files would be overwritten by merge:
	how2git/git.typ
Please commit your changes or stash them before you merge.
Aborting
```

Do what it says. Either ```bash git stash```, or commit. 

= Branches
Adding a new feature? Make a branch for it. Experimenting? Make a branch. Branches let multiple people work on the repo without stepping on each other's toes. 

When you create a branch, you choose a branch from which it stems. When the branch is created it will be an exact copy of its parent. 

NO TWO PEOPLE SHOULD BE WORKING ON THE SAME BRANCH AT THE SAME TIME. If you would like to make changes to someone else's branch, ask them nicely.  

= Merging

Once a branch has served its purpose, its contents can be merged into another branch. Sometimes this is as easy as ```bash git merge branch-to-be-merged``` (from the branch into which the branch is to be merged). However, if changes have been made to a file in both branches, they will probably conflict. Sometimes this can be automatically resolved, sometimes you have to manually go in and edit the file, then commit the result.

Rather than merging from the command line, you should create a "pull request" in GitHub. You can say what you are merging and why, and someone else (probably to whom the target branch belongs) can review and approve it. I do not know why they are called pull requests. They are requests to merge, not requests to pull. You do not need to request to pull.  

Resolving merge conflicts is easily the hardest part of version control. 

Don't squash commits, I'll kill you. 

= What should and shouldn't be tracked

Briefly: if a person wrote it, track it. If it was generated, don't. By "generated," I mean the output of a program; you _can_ include AI generated text, but I'll be disappointed. 

If something shouldn't be tracked, put it in the `.gitignore` file. 

= `.gitignore`
Just a file containing a list of files. Say you don't want `a.out` to be included in commits, just put `a.out` on its own line in `.gitignore`. If you don't want anything in the `build` directory to be tracked, add `build/` on its own line. If you want to ignore PDFs, add `*.pdf` (`*` just means "0 or more characters"). 

```
a.out
build/
*.pdf
```

Note that any file beginning with a "`.`", including `.gitignore`, will not be included in ```bash git add *```. You will need to include the file specifically (e.g. ```bash git add .gitignore```). 

= Sick tips & tricks

- ```bash git diff``` to see all changes since the last commit
- ```bash git log``` to see a list of commits and when they were made.
- ```bash git branch -a``` to see all branches
- ```bash git switch branch-name``` to switch to branch `branch-name`
- ```bash git stash``` to temporarily discard changes since last commit, and ```bash git stash pop``` to bring them back
- ```bash echo "bawbag" | cowsay```
- If you really get stuck in some kind of mergy quagmire and you don't care about your local changes, just delete your working copy (```bash rm -rf rtep-5```) and clone again. 


= Issues

Use them. Go into the "Issues" tab on GitHub and add them. Reference them in commits (e.g. "Relates to \#9" or "Closes \#12"). Using "close," "closes," or "fixes" in commit messages will close the commits in GitHub. Doing so in pull requests will also close them. You should do this. If you are manually closing issues in GitHub, you're doing something wrong.

Make them informative. Explain the issue. Add comments when more is discovered about the issue. Do not assume that an issue fixed will not ever resurface. Reopen the issue if it does. Link issues. Create sub-issues. QA "engineers" are glorified issue-writers.  

Add an issue for a bug. Add an issue for a new feature. Add an issue for a feature to be removed. Add an issue to remind you to add issues. Add an issue for your granny's birthday. If an issue becomes a non-issue, or unplanned, it can be closed. 

Issues are a to-do list. When there are no more issues, we are finished.

I promise I meant for this to be a page max.

= Links 2 vids

I'll add these later if I remember. 
