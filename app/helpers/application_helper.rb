module ApplicationHelper
  def default_meta_tags
    {
      site: 'kinoko.app',
      title: 'Kinoko',
      reverse: true,
      separator: '|',
      description: 'Timeboxing app with time logging and a mushroom forest',
      keywords: 'timeboxing, pomodoro, productivity',
      canonical: request.original_url,
      noindex: !Rails.env.production?,
      icon: [],
      og: {
        site_name: 'kinoko.app',
        title: 'Kinoko',
        description: 'Timeboxing app with time logging and a mushroom forest',
        type: 'website',
        url: request.original_url,
        image: image_url('cover.png')
      }
    }
  end
end
