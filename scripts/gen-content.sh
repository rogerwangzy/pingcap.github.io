stable_version="v3.0"
stable_version_tag="stable"

cn_tmp_docs_path="content/docs-cn"
en_tmp_docs_path="content/docs"
index_file="_index.md"

mv $en_tmp_docs_path/$stable_version $en_tmp_docs_path/$stable_version_tag
mv $cn_tmp_docs_path/$stable_version $cn_tmp_docs_path/$stable_version_tag

cp $en_tmp_docs_path/$stable_version_tag/$index_file $en_tmp_docs_path/
cp $cn_tmp_docs_path/$stable_version_tag/$index_file $cn_tmp_docs_path/

node scripts/gen-nav.js 'content/docs/stable/TOC.md' 'data/docs_stable_toc.json' '/docs/stable'
node scripts/gen-nav.js 'content/docs/dev/TOC.md' 'data/docs_dev_toc.json' '/docs/dev'
node scripts/gen-nav.js 'content/docs/v2.1/TOC.md' 'data/docs_v21_toc.json' '/docs/v2.1'
node scripts/gen-nav.js 'content/docs/v3.1/TOC.md' 'data/docs_v31_toc.json' '/docs/v3.1'
node scripts/gen-nav.js 'content/docs-cn/stable/TOC.md' 'data/docs_cn_stable_toc.json' '/docs-cn/stable'
node scripts/gen-nav.js 'content/docs-cn/dev/TOC.md' 'data/docs_cn_dev_toc.json' '/docs-cn/dev'
node scripts/gen-nav.js 'content/docs-cn/v2.1/TOC.md' 'data/docs_cn_v21_toc.json' '/docs-cn/v2.1'
node scripts/gen-nav.js 'content/docs-cn/v3.1/TOC.md' 'data/docs_cn_v31_toc.json' '/docs-cn/v3.1'
node scripts/gen-nav.js 'content/about-cn/recruit/TOC.md' 'data/recruit_cn_toc.json' '/about-cn/recruit/'
node scripts/gen-nav.js 'content/blog-cn/TOC-User-Case.md' 'data/cases_cn_toc.json' '/cases-cn/'
node scripts/gen-nav.js 'content/tidb-academy/README.md' 'data/tidb_academy_toc.json' '/tidb-academy/'
