Redmine::Plugin.register :approve_docs do
  name 'Approve Docs'
  author 'Brechka Anton'
  description 'This plugin adds to redmine approval process for internal documents. Also it allows to edit docs with onlyoffice online editor.'
  version '0.0.1'
  url 'https://github.com/mrsadman99/redmine_approve_docs.git'
  author_url 'https://github.com/mrsadman99'

  requires_redmine version_or_higher: '6.0.0'
end
