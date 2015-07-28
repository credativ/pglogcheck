TESTS = $(wildcard test/*)

RESULTS = $(patsubst test/%,make-result/%,$(TESTS))

check: $(RESULTS)

make-result/%: test/%
	@mkdir -p result
	./pglogcheck --no-timing $< > result/$*
	-diff -u expected/$* result/$*

clean:
	rm -rf result
