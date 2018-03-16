broken_symlink.tar.gz:
	rm -rf broken_symlink $@
	mkdir broken_symlink
	ln -s this_file_does_not_exist broken_symlink/configure
	tar -cvzf $@ broken_symlink

clean:
	rm -rf broken_symlink*
	
