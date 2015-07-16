.class public final Lcom/snapchat/android/model/server/GeofilterResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
    }
.end annotation


# static fields
.field private static final DEFAULT_EXPIRATION:J = 0xa4cb800L

.field private static final DEFAULT_EXPIRATION_FLAG:J


# instance fields
.field public mClientCacheExpiration:Lcht;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_cache_expiration_date_time"
    .end annotation
.end field

.field public mClientCacheTtlMinutes:Ljava/lang/Long;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "client_cache_ttl_minutes"
    .end annotation
.end field

.field public mDynamicContent:Ljava/util/List;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "dynamic_content"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/snapchat/android/model/GeofilterMarkup;",
            ">;"
        }
    .end annotation
.end field

.field public mExpiresCountdown:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "expires_countdown"
    .end annotation
.end field

.field public mFilterId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "filter_id"
    .end annotation
.end field

.field public mGeofence:Lbiz;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "geofence"
    .end annotation
.end field

.field public mImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "image"
    .end annotation
.end field

.field public mIsDynamic:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_dynamic_geofilter"
    .end annotation
.end field

.field public mIsSponsored:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_sponsored"
    .end annotation
.end field

.field protected mLayoutParams:Ljava/util/List;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
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

.field public mPriority:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "priority"
    .end annotation
.end field

.field public mSponsoredSlugImageUrl:Ljava/lang/String;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sponsored_slug_img_link"
    .end annotation
.end field

.field public mSponsoredSlugPosition:Lcom/snapchat/android/model/server/GeofilterResponse$SponsoredSlugPosition;
    .annotation build Lchd;
    .end annotation

    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "sponsored_slug_position"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/widget/ImageView$ScaleType;
    .locals 2
    .annotation build Lchc;
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mLayoutParams:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mLayoutParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    :cond_0
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 176
    :goto_0
    return-object v0

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mLayoutParams:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 171
    const-string v1, "scale_aspect_fill"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 172
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 173
    :cond_2
    const-string v1, "scale_to_fill"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_0

    .line 176
    :cond_3
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    goto :goto_0
.end method

.method public final b()I
    .locals 3

    .prologue
    const/16 v1, 0x11

    .line 181
    iget-object v0, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mLayoutParams:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mLayoutParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    :cond_0
    move v0, v1

    .line 202
    :goto_0
    return v0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mLayoutParams:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 185
    const-string v2, "top"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 186
    const/16 v0, 0x31

    goto :goto_0

    .line 187
    :cond_2
    const-string v2, "bottom"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 188
    const/16 v0, 0x51

    goto :goto_0

    .line 189
    :cond_3
    const-string v2, "left"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 190
    const/16 v0, 0x13

    goto :goto_0

    .line 191
    :cond_4
    const-string v2, "right"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 192
    const/16 v0, 0x15

    goto :goto_0

    .line 193
    :cond_5
    const-string v2, "top_left"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 194
    const/16 v0, 0x33

    goto :goto_0

    .line 195
    :cond_6
    const-string v2, "top_right"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 196
    const/16 v0, 0x35

    goto :goto_0

    .line 197
    :cond_7
    const-string v2, "bottom_left"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 198
    const/16 v0, 0x53

    goto :goto_0

    .line 199
    :cond_8
    const-string v2, "bottom_right"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 200
    const/16 v0, 0x55

    goto :goto_0

    :cond_9
    move v0, v1

    .line 202
    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .prologue
    const/16 v4, 0x27

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GeofilterResponse{mFilterId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mFilterId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mExpiresCountdown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mExpiresCountdown:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mImageUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mGeofence="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mGeofence:Lbiz;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLayoutParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mLayoutParams:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDynamicContent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mDynamicContent:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mIsDynamic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mIsDynamic:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClientCacheExpiration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mClientCacheExpiration:Lcht;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mClientCacheTtlMinutes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/snapchat/android/model/server/GeofilterResponse;->mClientCacheTtlMinutes:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
