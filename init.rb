Redmine::Plugin.register :approve_docs do
  name 'Approve Docs'
  author 'Brechka Anton'
  description 'This plugin adds to redmine approval process for internal documents. Also it allows to edit docs with onlyoffice online editor.'
  version '0.0.1'
  url 'https://github.com/mrsadman99/redmine_approve_docs.git'
  author_url 'https://github.com/mrsadman99'

  requires_redmine version_or_higher: '6.0.0'

  # Permission group
  project_module :approve_docs do
    # Permission to view approvals in project
    permission :manipulate_approvals, { approvals: [:index, :show] }, require: :member
  end
  
  # Project menu for approvals
  menu :project_menu, 
    :approvals,
    { controller: 'approvals', action: 'index' },
    caption: :project_menu_approvals,
    before: :documents,
    param: :project_id,
    if: Proc.new { |project| User.current.allowed_to?(:view_approvals, project) }
end
