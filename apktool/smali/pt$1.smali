.class final Lpt$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lpt;

.field final synthetic val$result:Lpt$d;


# direct methods
.method constructor <init>(Lpt;Lpt$d;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lpt$1;->this$0:Lpt;

    iput-object p2, p0, Lpt$1;->val$result:Lpt$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 138
    iget-object v2, p0, Lpt$1;->this$0:Lpt;

    iget-object v3, p0, Lpt$1;->val$result:Lpt$d;

    iget-object v0, v3, Lpt$d;->serverInfo:Lbiw;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_5

    iget-object v4, v3, Lpt$d;->location:Lpt$b;

    iget-object v0, v3, Lpt$d;->serverInfo:Lbiw;

    invoke-virtual {v0}, Lbiw;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbgp;->b()V

    if-eqz v0, :cond_7

    iget-object v5, v2, Lpt;->mGsonWrapper:Lato;

    const-class v6, Lbie;

    invoke-virtual {v5, v0, v6}, Lato;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbie;

    if-eqz v0, :cond_7

    sget-object v5, Lbie$a;->EQUAL:Lbie$a;

    invoke-virtual {v0}, Lbie;->a()Lbie$a;

    move-result-object v0

    if-ne v5, v0, :cond_7

    const-string v0, "GetLocationDataTask"

    const-string v4, "LocationResponse was same, nothing changed."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, Lpt;->mCallback:Lpt$a;

    invoke-interface {v0}, Lpt$a;->a()V

    :cond_0
    :goto_1
    iget-object v0, v3, Lpt$d;->createdFriends:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lpt$d;->createdFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, v3, Lpt$d;->createdFriendStories:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, v3, Lpt$d;->createdFriendStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, v2, Lpt;->mUser:Lajv;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lpt;->mUser:Lajv;

    iget-object v4, v3, Lpt$d;->createdFriends:Ljava/util/List;

    invoke-virtual {v0, v4}, Lajv;->c(Ljava/util/List;)V

    :cond_3
    invoke-static {}, Lajq;->a()Lajq;

    move-result-object v0

    iget-object v3, v3, Lpt$d;->createdFriendStories:Ljava/util/List;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lajq;->a(Ljava/util/List;Z)V

    invoke-static {}, Lban;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v3, Lbbs;

    invoke-direct {v3}, Lbbs;-><init>()V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, v2, Lpt;->mCallback:Lpt$a;

    invoke-interface {v0, v1}, Lpt$a;->a(Ljava/lang/String;)V

    .line 139
    :cond_5
    return-void

    .line 138
    :cond_6
    iget-object v0, v3, Lpt$d;->serverInfo:Lbiw;

    invoke-virtual {v0}, Lbiw;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_7
    if-nez v4, :cond_8

    const-string v0, "GetLocationDataTask"

    const-string v4, "LocationResponsePayload was null."

    new-array v5, v8, [Ljava/lang/Object;

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_8
    iget-object v0, v4, Lpt$b;->weather:Lakx;

    if-eqz v0, :cond_9

    const-string v0, "GetLocationDataTask"

    const-string v5, "Updating Weather"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {v0, v5, v6}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, Lpt;->mCallback:Lpt$a;

    new-instance v5, Laka;

    iget-object v6, v4, Lpt$b;->weather:Lakx;

    invoke-direct {v5, v6}, Laka;-><init>(Lakx;)V

    invoke-interface {v0, v5}, Lpt$a;->a(Laka;)V

    :cond_9
    iget-object v0, v4, Lpt$b;->filters:Ljava/util/List;

    if-eqz v0, :cond_b

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "GetLocationDataTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "num geofilters from server"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v4, Lpt$b;->filters:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v4, Lpt$b;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/GeofilterResponse;

    :try_start_0
    new-instance v7, Laiv;

    invoke-direct {v7, v0}, Laiv;-><init>(Lcom/snapchat/android/model/server/GeofilterResponse;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v7, Lnr;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lnr;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lpt;->mExceptionReporter:Lazo;

    invoke-virtual {v0, v7}, Lazo;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_a
    const-string v0, "GetLocationDataTask"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Updating geofilters with "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " geofilters"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v8, [Ljava/lang/Object;

    invoke-static {v0, v6, v7}, Lcom/snapchat/android/Timber;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v2, Lpt;->mCallback:Lpt$a;

    invoke-interface {v0, v5}, Lpt$a;->a(Ljava/util/List;)V

    :cond_b
    iget-object v0, v4, Lpt$b;->cachable_filters:Ljava/util/List;

    if-eqz v0, :cond_d

    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, v4, Lpt$b;->cachable_filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v4, Lpt$b;->cachable_filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/GeofilterResponse;

    :try_start_1
    new-instance v7, Laiv;

    invoke-direct {v7, v0}, Laiv;-><init>(Lcom/snapchat/android/model/server/GeofilterResponse;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v7, Lnr;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lnr;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lpt;->mExceptionReporter:Lazo;

    invoke-virtual {v0, v7}, Lazo;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_c
    iget-object v0, v2, Lpt;->mCallback:Lpt$a;

    invoke-interface {v0, v5}, Lpt$a;->c(Ljava/util/List;)V

    :cond_d
    iget-object v0, v4, Lpt$b;->our_stories:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Lpt$2;

    invoke-direct {v0, v2, v4}, Lpt$2;-><init>(Lpt;Lpt$b;)V

    invoke-static {v0}, Lbgp;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method
