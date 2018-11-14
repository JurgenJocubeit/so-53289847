class User < ApplicationRecord
  has_one :profile, as: :profilable
  accepts_nested_attributes_for :profile, allow_destroy: true, reject_if: :all_blank
  delegate :age, :city, :gender, :license, to: :profile

  def all_matching_content
    Content.where(
      profile: Profile.where(
        "? >= age", profile.age).
        where(
         gender: profile.gender,
         city: profile.city,
         license: profile.license).
        where(profilable_type: "Content"))
  end

  def any_matching_content
    Content.where(
      profile: Profile.where(
        "? >= age", profile.age).
        or(Profile.where(gender: profile.gender)).
        or(Profile.where(city: profile.city)).
        or(Profile.where(license: profile.license)).
        where(
          profilable_type: "Content"))
  end
end
