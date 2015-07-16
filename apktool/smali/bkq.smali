.class public Lbkq;
.super Lbix;
.source "SourceFile"


# instance fields
.field protected addedFriendsTimestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "added_friends_timestamp"
    .end annotation
.end field

.field protected allowedToUseCash:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "allowed_to_use_cash"
    .end annotation
.end field

.field protected authToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "auth_token"
    .end annotation
.end field

.field protected birthday:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "birthday"
    .end annotation
.end field

.field protected cashCustomerId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cash_customer_id"
    .end annotation
.end field

.field protected cashProvider:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "cash_provider"
    .end annotation
.end field

.field protected clientProperties:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_properties"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected currentTimestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "current_timestamp"
    .end annotation
.end field

.field protected deviceToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "device_token"
    .end annotation
.end field

.field protected email:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "email"
    .end annotation
.end field

.field protected enableSaveStoryToGallery:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable_save_story_to_gallery"
    .end annotation
.end field

.field protected enableVideoTranscodingAndroid:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "enable_video_transcoding_android"
    .end annotation
.end field

.field protected featureSettings:Lbit;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "feature_settings"
    .end annotation
.end field

.field protected isCashActive:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_cash_active"
    .end annotation
.end field

.field protected isTwoFaEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_two_fa_enabled"
    .end annotation
.end field

.field protected lastAddressBookUpdatedDate:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_address_book_updated_date"
    .end annotation
.end field

.field protected lastReplayedSnapTimestamp:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_replayed_snap_timestamp"
    .end annotation
.end field

.field protected lastUpdated:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "last_updated"
    .end annotation
.end field

.field protected logged:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "logged"
    .end annotation
.end field

.field protected mobile:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobile"
    .end annotation
.end field

.field protected mobileVerificationKey:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mobile_verification_key"
    .end annotation
.end field

.field protected numberOfBestFriends:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "number_of_best_friends"
    .end annotation
.end field

.field protected ourStoryAuths:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "our_story_auths"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbjn;",
            ">;"
        }
    .end annotation
.end field

.field protected qrPath:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "qr_path"
    .end annotation
.end field

.field protected rawThumbnailUploadEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "raw_thumbnail_upload_enabled"
    .end annotation
.end field

.field protected received:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "received"
    .end annotation
.end field

.field protected recents:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recents"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected requireRefreshingProfileMedia:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "require_refreshing_profile_media"
    .end annotation
.end field

.field protected score:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "score"
    .end annotation
.end field

.field protected searchableByPhoneNumber:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "searchable_by_phone_number"
    .end annotation
.end field

.field protected seenTooltips:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seen_tooltips"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected sent:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sent"
    .end annotation
.end field

.field protected shouldCallToVerifyNumber:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "should_call_to_verify_number"
    .end annotation
.end field

.field protected shouldShowSuggestionPrompt:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "should_show_suggestion_prompt"
    .end annotation
.end field

.field protected shouldTextToVerifyNumber:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "should_text_to_verify_number"
    .end annotation
.end field

.field protected snapP:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snap_p"
    .end annotation
.end field

.field protected snapchatPhoneNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snapchat_phone_number"
    .end annotation
.end field

.field protected snaps:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "snaps"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lbiy;",
            ">;"
        }
    .end annotation
.end field

.field protected storyPrivacy:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "story_privacy"
    .end annotation
.end field

.field protected studySettings:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "study_settings"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected suggestionPromptButtonText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suggestion_prompt_button_text"
    .end annotation
.end field

.field protected suggestionPromptDurationInMillis:Ljava/lang/Long;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suggestion_prompt_duration_in_millis"
    .end annotation
.end field

.field protected suggestionPromptLink:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suggestion_prompt_link"
    .end annotation
.end field

.field protected suggestionPromptText:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suggestion_prompt_text"
    .end annotation
.end field

.field protected targeting:Ljava/util/Map;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "targeting"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected thirdPartyTrackingAppId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "third_party_tracking_app_id"
    .end annotation
.end field

.field protected thirdPartyTrackingBaseUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "third_party_tracking_base_url"
    .end annotation
.end field

.field protected twoFaVerifiedDeviceNum:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "two_fa_verified_device_num"
    .end annotation
.end field

.field protected twoFaVerifiedDevices:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "two_fa_verified_devices"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lblr;",
            ">;"
        }
    .end annotation
.end field

.field protected username:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "username"
    .end annotation
.end field

.field protected videoFiltersEnabled:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "video_filters_enabled"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Lbix;-><init>()V

    .line 177
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lbkq;->lastAddressBookUpdatedDate:Ljava/lang/Long;

    .line 186
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lbkq;->requireRefreshingProfileMedia:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public final A()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 575
    iget-object v0, p0, Lbkq;->score:Ljava/lang/Integer;

    return-object v0
.end method

.method public final B()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 629
    iget-object v0, p0, Lbkq;->recents:Ljava/util/List;

    return-object v0
.end method

.method public final C()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lbkq;->addedFriendsTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final D()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lbkq;->currentTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final E()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lbkq;->lastReplayedSnapTimestamp:Ljava/lang/Long;

    return-object v0
.end method

.method public final F()Ljava/lang/String;
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lbkq;->snapchatPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final G()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 764
    iget-object v0, p0, Lbkq;->searchableByPhoneNumber:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final H()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 818
    iget-object v0, p0, Lbkq;->seenTooltips:Ljava/util/List;

    return-object v0
.end method

.method public final I()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 836
    iget-object v0, p0, Lbkq;->clientProperties:Ljava/util/Map;

    return-object v0
.end method

.method public final J()Lbit;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lbkq;->featureSettings:Lbit;

    return-object v0
.end method

.method public final K()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 899
    iget-object v0, p0, Lbkq;->studySettings:Ljava/util/Map;

    return-object v0
.end method

.method public final L()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lbkq;->isCashActive:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 935
    iget-object v0, p0, Lbkq;->cashProvider:Ljava/lang/String;

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lbkq;->cashCustomerId:Ljava/lang/String;

    return-object v0
.end method

.method public final O()Ljava/lang/String;
    .locals 1

    .prologue
    .line 971
    iget-object v0, p0, Lbkq;->allowedToUseCash:Ljava/lang/String;

    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    .prologue
    .line 989
    iget-object v0, p0, Lbkq;->thirdPartyTrackingBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lbkq;->thirdPartyTrackingAppId:Ljava/lang/String;

    return-object v0
.end method

.method public final R()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lbkq;->lastAddressBookUpdatedDate:Ljava/lang/Long;

    return-object v0
.end method

.method public final S()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1043
    iget-object v0, p0, Lbkq;->qrPath:Ljava/lang/String;

    return-object v0
.end method

.method public final T()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1070
    iget-object v0, p0, Lbkq;->requireRefreshingProfileMedia:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final U()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1097
    iget-object v0, p0, Lbkq;->shouldShowSuggestionPrompt:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final V()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1115
    iget-object v0, p0, Lbkq;->suggestionPromptLink:Ljava/lang/String;

    return-object v0
.end method

.method public final W()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1133
    iget-object v0, p0, Lbkq;->suggestionPromptText:Ljava/lang/String;

    return-object v0
.end method

.method public final X()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lbkq;->suggestionPromptButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public final Y()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lbkq;->suggestionPromptDurationInMillis:Ljava/lang/Long;

    return-object v0
.end method

.method public final Z()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lbkq;->videoFiltersEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final aa()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lbjn;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1205
    iget-object v0, p0, Lbkq;->ourStoryAuths:Ljava/util/List;

    return-object v0
.end method

.method public final ab()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1223
    iget-object v0, p0, Lbkq;->targeting:Ljava/util/Map;

    return-object v0
.end method

.method public final ac()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1241
    iget-object v0, p0, Lbkq;->rawThumbnailUploadEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final ad()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 1259
    iget-object v0, p0, Lbkq;->isTwoFaEnabled:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final ae()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lblr;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1304
    iget-object v0, p0, Lbkq;->twoFaVerifiedDevices:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 1375
    if-ne p1, p0, :cond_0

    .line 1376
    const/4 v0, 0x1

    .line 1382
    :goto_0
    return v0

    .line 1378
    :cond_0
    instance-of v0, p1, Lbkq;

    if-nez v0, :cond_1

    .line 1379
    const/4 v0, 0x0

    goto :goto_0

    .line 1381
    :cond_1
    check-cast p1, Lbkq;

    .line 1382
    new-instance v0, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v1, p0, Lbkq;->logged:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkq;->logged:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->username:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->username:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->authToken:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->deviceToken:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->deviceToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->email:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->mobile:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->mobileVerificationKey:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->mobileVerificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->enableVideoTranscodingAndroid:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkq;->enableVideoTranscodingAndroid:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->enableSaveStoryToGallery:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkq;->enableSaveStoryToGallery:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->birthday:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->snapP:Ljava/lang/Integer;

    iget-object v2, p1, Lbkq;->snapP:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->storyPrivacy:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->storyPrivacy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->sent:Ljava/lang/Integer;

    iget-object v2, p1, Lbkq;->sent:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->received:Ljava/lang/Integer;

    iget-object v2, p1, Lbkq;->received:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->score:Ljava/lang/Integer;

    iget-object v2, p1, Lbkq;->score:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->snaps:Ljava/util/List;

    iget-object v2, p1, Lbkq;->snaps:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->recents:Ljava/util/List;

    iget-object v2, p1, Lbkq;->recents:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->lastUpdated:Ljava/lang/Long;

    iget-object v2, p1, Lbkq;->lastUpdated:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->addedFriendsTimestamp:Ljava/lang/Long;

    iget-object v2, p1, Lbkq;->addedFriendsTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->currentTimestamp:Ljava/lang/Long;

    iget-object v2, p1, Lbkq;->currentTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->lastReplayedSnapTimestamp:Ljava/lang/Long;

    iget-object v2, p1, Lbkq;->lastReplayedSnapTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->snapchatPhoneNumber:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->snapchatPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->searchableByPhoneNumber:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkq;->searchableByPhoneNumber:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->shouldCallToVerifyNumber:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkq;->shouldCallToVerifyNumber:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->shouldTextToVerifyNumber:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkq;->shouldTextToVerifyNumber:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->seenTooltips:Ljava/util/List;

    iget-object v2, p1, Lbkq;->seenTooltips:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->clientProperties:Ljava/util/Map;

    iget-object v2, p1, Lbkq;->clientProperties:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->featureSettings:Lbit;

    iget-object v2, p1, Lbkq;->featureSettings:Lbit;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->numberOfBestFriends:Ljava/lang/Integer;

    iget-object v2, p1, Lbkq;->numberOfBestFriends:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->studySettings:Ljava/util/Map;

    iget-object v2, p1, Lbkq;->studySettings:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->isCashActive:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkq;->isCashActive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->cashProvider:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->cashProvider:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->cashCustomerId:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->cashCustomerId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->allowedToUseCash:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->allowedToUseCash:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->thirdPartyTrackingBaseUrl:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->thirdPartyTrackingBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->thirdPartyTrackingAppId:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->thirdPartyTrackingAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->lastAddressBookUpdatedDate:Ljava/lang/Long;

    iget-object v2, p1, Lbkq;->lastAddressBookUpdatedDate:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->qrPath:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->qrPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->requireRefreshingProfileMedia:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkq;->requireRefreshingProfileMedia:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->shouldShowSuggestionPrompt:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkq;->shouldShowSuggestionPrompt:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->suggestionPromptLink:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->suggestionPromptLink:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->suggestionPromptText:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->suggestionPromptText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->suggestionPromptButtonText:Ljava/lang/String;

    iget-object v2, p1, Lbkq;->suggestionPromptButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->suggestionPromptDurationInMillis:Ljava/lang/Long;

    iget-object v2, p1, Lbkq;->suggestionPromptDurationInMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->videoFiltersEnabled:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkq;->videoFiltersEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->ourStoryAuths:Ljava/util/List;

    iget-object v2, p1, Lbkq;->ourStoryAuths:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->targeting:Ljava/util/Map;

    iget-object v2, p1, Lbkq;->targeting:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->rawThumbnailUploadEnabled:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkq;->rawThumbnailUploadEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->isTwoFaEnabled:Ljava/lang/Boolean;

    iget-object v2, p1, Lbkq;->isTwoFaEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->twoFaVerifiedDeviceNum:Ljava/lang/Integer;

    iget-object v2, p1, Lbkq;->twoFaVerifiedDeviceNum:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->twoFaVerifiedDevices:Ljava/util/List;

    iget-object v2, p1, Lbkq;->twoFaVerifiedDevices:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v0

    goto/16 :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 1318
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    invoke-direct {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>()V

    iget-object v1, p0, Lbkq;->logged:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->username:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->deviceToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->email:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->mobile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->mobileVerificationKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->enableVideoTranscodingAndroid:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->enableSaveStoryToGallery:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->snapP:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->storyPrivacy:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->sent:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->received:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->score:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->snaps:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->recents:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->lastUpdated:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->addedFriendsTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->currentTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->lastReplayedSnapTimestamp:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->snapchatPhoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->searchableByPhoneNumber:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->shouldCallToVerifyNumber:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->shouldTextToVerifyNumber:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->seenTooltips:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->clientProperties:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->featureSettings:Lbit;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->numberOfBestFriends:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->studySettings:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->isCashActive:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->cashProvider:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->cashCustomerId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->allowedToUseCash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->thirdPartyTrackingBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->thirdPartyTrackingAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->lastAddressBookUpdatedDate:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->qrPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->requireRefreshingProfileMedia:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->shouldShowSuggestionPrompt:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->suggestionPromptLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->suggestionPromptText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->suggestionPromptButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->suggestionPromptDurationInMillis:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->videoFiltersEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->ourStoryAuths:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->targeting:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->rawThumbnailUploadEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->isTwoFaEnabled:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->twoFaVerifiedDeviceNum:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    iget-object v1, p0, Lbkq;->twoFaVerifiedDevices:Ljava/util/List;

    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    return v0
.end method

.method public final m()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lbkq;->logged:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lbkq;->username:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lbkq;->authToken:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lbkq;->deviceToken:Ljava/lang/String;

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lbkq;->email:Ljava/lang/String;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    iget-object v0, p0, Lbkq;->mobile:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lbkq;->mobileVerificationKey:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lbkq;->enableVideoTranscodingAndroid:Ljava/lang/Boolean;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1313
    invoke-static {p0}, Lorg/apache/commons/lang3/builder/ToStringBuilder;->reflectionToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lbkq;->enableSaveStoryToGallery:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lbkq;->birthday:Ljava/lang/String;

    return-object v0
.end method

.method public final w()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lbkq;->snapP:Ljava/lang/Integer;

    return-object v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lbkq;->storyPrivacy:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lbkq;->sent:Ljava/lang/Integer;

    return-object v0
.end method

.method public final z()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 548
    iget-object v0, p0, Lbkq;->received:Ljava/lang/Integer;

    return-object v0
.end method
