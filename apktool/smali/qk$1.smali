.class final Lqk$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lqk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lqk;

.field final synthetic val$result:Lqk$d;


# direct methods
.method constructor <init>(Lqk;Lqk$d;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lqk$1;->this$0:Lqk;

    iput-object p2, p0, Lqk$1;->val$result:Lqk$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 138
    iget-object v2, p0, Lqk$1;->this$0:Lqk;

    iget-object v3, p0, Lqk$1;->val$result:Lqk$d;

    iget-object v0, v3, Lqk$d;->serverInfo:Lbjx;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_5

    iget-object v4, v3, Lqk$d;->location:Lqk$b;

    iget-object v0, v3, Lqk$d;->serverInfo:Lbjx;

    invoke-virtual {v0}, Lbjx;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lbhp;->b()V

    if-eqz v0, :cond_7

    iget-object v5, v2, Lqk;->mGsonWrapper:Laum;

    const-class v6, Lbje;

    invoke-virtual {v5, v0, v6}, Laum;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbje;

    if-eqz v0, :cond_7

    sget-object v5, Lbje$a;->EQUAL:Lbje$a;

    invoke-virtual {v0}, Lbje;->a()Lbje$a;

    move-result-object v0

    if-ne v5, v0, :cond_7

    iget-object v0, v2, Lqk;->mCallback:Lqk$a;

    invoke-interface {v0}, Lqk$a;->a()V

    :cond_0
    :goto_1
    iget-object v0, v3, Lqk$d;->createdFriends:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, v3, Lqk$d;->createdFriends:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, v3, Lqk$d;->createdFriendStories:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, v3, Lqk$d;->createdFriendStories:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, v2, Lqk;->mUser:Lakp;

    if-eqz v0, :cond_3

    iget-object v0, v2, Lqk;->mUser:Lakp;

    iget-object v4, v3, Lqk$d;->createdFriends:Ljava/util/List;

    invoke-virtual {v0, v4}, Lakp;->c(Ljava/util/List;)V

    :cond_3
    invoke-static {}, Lakk;->a()Lakk;

    move-result-object v0

    iget-object v3, v3, Lqk$d;->createdFriendStories:Ljava/util/List;

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lakk;->a(Ljava/util/List;Z)V

    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v3, Lbcs;

    invoke-direct {v3}, Lbcs;-><init>()V

    invoke-virtual {v0, v3}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, v2, Lqk;->mCallback:Lqk$a;

    invoke-interface {v0, v1}, Lqk$a;->a(Ljava/lang/String;)V

    .line 139
    :cond_5
    return-void

    .line 138
    :cond_6
    iget-object v0, v3, Lqk$d;->serverInfo:Lbjx;

    invoke-virtual {v0}, Lbjx;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_7
    if-eqz v4, :cond_0

    iget-object v0, v4, Lqk$b;->weather:Lals;

    if-eqz v0, :cond_8

    iget-object v0, v2, Lqk;->mCallback:Lqk$a;

    new-instance v5, Lakv;

    iget-object v6, v4, Lqk$b;->weather:Lals;

    invoke-direct {v5, v6}, Lakv;-><init>(Lals;)V

    invoke-interface {v0, v5}, Lqk$a;->a(Lakv;)V

    :cond_8
    iget-object v0, v4, Lqk$b;->filters:Ljava/util/List;

    if-eqz v0, :cond_a

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "num geofilters from server"

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lqk$b;->filters:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v4, Lqk$b;->filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/GeofilterResponse;

    :try_start_0
    new-instance v7, Lajr;

    invoke-direct {v7, v0}, Lajr;-><init>(Lcom/snapchat/android/model/server/GeofilterResponse;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v7, Loi;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Loi;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lqk;->mExceptionReporter:Lban;

    invoke-virtual {v0, v7}, Lban;->a(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v6, "Updating geofilters with "

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " geofilters"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v2, Lqk;->mCallback:Lqk$a;

    invoke-interface {v0, v5}, Lqk$a;->a(Ljava/util/List;)V

    :cond_a
    iget-object v0, v4, Lqk$b;->cachable_filters:Ljava/util/List;

    if-eqz v0, :cond_c

    new-instance v5, Ljava/util/ArrayList;

    iget-object v0, v4, Lqk$b;->cachable_filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v0, v4, Lqk$b;->cachable_filters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/model/server/GeofilterResponse;

    :try_start_1
    new-instance v7, Lajr;

    invoke-direct {v7, v0}, Lajr;-><init>(Lcom/snapchat/android/model/server/GeofilterResponse;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    new-instance v7, Loi;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Loi;-><init>(Ljava/lang/String;)V

    iget-object v0, v2, Lqk;->mExceptionReporter:Lban;

    invoke-virtual {v0, v7}, Lban;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_b
    iget-object v0, v2, Lqk;->mCallback:Lqk$a;

    invoke-interface {v0, v5}, Lqk$a;->c(Ljava/util/List;)V

    :cond_c
    iget-object v0, v4, Lqk$b;->our_stories:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Lqk$2;

    invoke-direct {v0, v2, v4}, Lqk$2;-><init>(Lqk;Lqk$b;)V

    invoke-static {v0}, Lbhp;->a(Ljava/lang/Runnable;)V

    goto/16 :goto_1
.end method
