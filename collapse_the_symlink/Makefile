collapse_the_symlink.tar.gz:
	rm -rf collapse_the_symlink $@
	mkdir collapse_the_symlink
	touch collapse_the_symlink/foo.1
	ln -s foo.1 collapse_the_symlink/foo
	ln -s foo.1 collapse_the_symlink/foo.1.1
	ln -s obviously_broken collapse_the_symlink/broken
	tar -cvzf $@ collapse_the_symlink

clean:
	rm -rf collapse_the_symlink*
	
