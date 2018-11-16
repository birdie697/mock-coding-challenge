class RepoSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :language, :contributor_name

  def contributor_name
    object.contributors
  end
end
