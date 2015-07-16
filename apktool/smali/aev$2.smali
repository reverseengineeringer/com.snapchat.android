.class final Laev$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/brightcove/player/event/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laev;


# direct methods
.method constructor <init>(Laev;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Laev$2;->a:Laev;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final processEvent(Lcom/brightcove/player/event/Event;)V
    .locals 11

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 353
    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v5, "progress"

    invoke-static {v0, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 354
    new-array v0, v3, [Ljava/lang/Object;

    iget-object v5, p0, Laev$2;->a:Laev;

    iget-object v5, v5, Laev;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    aput-object v5, v0, v4

    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v1

    .line 359
    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v5

    const/4 v0, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 380
    :goto_1
    iget-object v0, p0, Laev$2;->a:Laev;

    invoke-virtual {v0}, Laev;->l()V

    .line 381
    return-void

    .line 359
    :sswitch_0
    const-string v3, "didPlay"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_1
    const-string v3, "sourceNotFound"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v0, v1

    goto :goto_0

    :sswitch_2
    const-string v6, "sourceNotPlayable"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_3
    const-string v3, "error"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string v3, "completed"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 361
    :pswitch_0
    iget-object v0, p0, Laev$2;->a:Laev;

    iput-boolean v4, v0, Laev;->f:Z

    .line 362
    iget-object v0, p0, Laev$2;->a:Laev;

    invoke-virtual {v0}, Laev;->h()V

    .line 363
    iget-object v0, p0, Laev$2;->a:Laev;

    iget-object v0, v0, Laev;->b:Lacq;

    iget-object v2, p0, Laev$2;->a:Laev;

    iget-object v2, v2, Laev;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v4, v1}, Lacq;->a(Ljava/lang/String;ZZ)V

    goto :goto_1

    .line 369
    :pswitch_1
    iget-object v0, p0, Laev$2;->a:Laev;

    iput-boolean v4, v0, Laev;->f:Z

    .line 370
    iget-object v0, p0, Laev$2;->a:Laev;

    invoke-virtual {v0}, Laev;->h()V

    .line 371
    iget-object v0, p0, Laev$2;->a:Laev;

    iget-object v0, v0, Laev;->b:Lacq;

    iget-object v1, p0, Laev$2;->a:Laev;

    iget-object v1, v1, Laev;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v4, v4}, Lacq;->a(Ljava/lang/String;ZZ)V

    .line 373
    iget-object v5, p0, Laev$2;->a:Laev;

    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v1, "video"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Video;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lcom/brightcove/player/model/Video;->getId()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2
    iget-object v0, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v3, "source"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/brightcove/player/model/Source;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/brightcove/player/model/Source;->getUrl()Ljava/lang/String;

    move-result-object v0

    :goto_3
    iget-object v3, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v6, "errorCode"

    invoke-interface {v3, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v6, "errorCode"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_4
    iget-object v6, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v7, "errorMessage"

    invoke-interface {v6, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v2, p1, Lcom/brightcove/player/event/Event;->properties:Ljava/util/Map;

    const-string v6, "errorMessage"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_5
    iget-object v6, v5, Laev;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v6, v6, Lcom/snapchat/android/discover/model/DSnapPage;->h:Ljava/lang/String;

    iget-object v7, v5, Laev;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    iget-object v7, v7, Lcom/snapchat/android/discover/model/DSnapPage;->a:Ljava/lang/String;

    iget-object v5, v5, Laev;->e:Lcom/snapchat/android/discover/model/DSnapPage;

    invoke-virtual {v5}, Lcom/snapchat/android/discover/model/DSnapPage;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/brightcove/player/event/Event;->getType()Ljava/lang/String;

    move-result-object v8

    const-string v9, "DISCOVER_BRIGHTCOVE_ERROR"

    invoke-static {v9}, Lcom/snapchat/android/analytics/framework/EasyMetric$EasyMetricFactory;->a(Ljava/lang/String;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v9

    const-string v10, "publisher_name"

    invoke-virtual {v9, v10, v6}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v9, "dsnap_id"

    invoke-virtual {v6, v9, v7}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v6

    const-string v7, "hash"

    invoke-virtual {v6, v7, v5}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    const-string v6, "error_type"

    invoke-virtual {v5, v6, v8}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    move-result-object v5

    if-eqz v1, :cond_2

    const-string v6, "video_id"

    invoke-virtual {v5, v6, v1}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "source"

    invoke-virtual {v5, v1, v0}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_3
    if-eqz v3, :cond_4

    const-string v0, "error_code"

    invoke-virtual {v5, v0, v3}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_4
    if-eqz v2, :cond_5

    const-string v0, "error_message"

    invoke-virtual {v5, v0, v2}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/snapchat/android/analytics/framework/EasyMetric;

    :cond_5
    invoke-virtual {v5, v4}, Lcom/snapchat/android/analytics/framework/EasyMetric;->a(Z)V

    goto/16 :goto_1

    .line 376
    :pswitch_2
    iget-object v0, p0, Laev$2;->a:Laev;

    invoke-virtual {v0}, Laev;->h()V

    goto/16 :goto_1

    :cond_6
    move-object v3, v2

    goto :goto_4

    :cond_7
    move-object v0, v2

    goto/16 :goto_3

    :cond_8
    move-object v1, v2

    goto/16 :goto_2

    :cond_9
    move-object v3, v2

    move-object v0, v2

    move-object v1, v2

    goto :goto_5

    .line 359
    :sswitch_data_0
    .sparse-switch
        -0x539f09b5 -> :sswitch_4
        -0x1d405c9a -> :sswitch_2
        0x5c4d208 -> :sswitch_3
        0xb5049aa -> :sswitch_1
        0x62c32c53 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
