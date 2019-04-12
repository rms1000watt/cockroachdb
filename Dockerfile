FROM cockroachdb/cockroach:v2.1.6 AS cockroach
FROM scratch
COPY --from=cockroach /lib/x86_64-linux-gnu/ /lib/x86_64-linux-gnu/
COPY --from=cockroach /lib64/ld-linux-x86-64.so.2 /lib64/ld-linux-x86-64.so.2
COPY --from=cockroach /cockroach/cockroach /cockroach
ENTRYPOINT [ "/cockroach" ]
