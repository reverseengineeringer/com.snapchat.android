.class final Ladl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Laeg$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ladl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Ladl;

.field private final b:Ljava/lang/String;


# direct methods
.method constructor <init>(Ladl;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 477
    iput-object p1, p0, Ladl$b;->a:Ladl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    iput-object p2, p0, Ladl$b;->b:Ljava/lang/String;

    .line 479
    return-void
.end method


# virtual methods
.method public final a(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/os/Bundle;Z)V
    .locals 9

    .prologue
    .line 483
    iget-object v1, p0, Ladl$b;->a:Ladl;

    iget-object v2, p0, Ladl$b;->b:Ljava/lang/String;

    iget-object v3, v1, Ladl;->i:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Ladl;->j:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ladl$c;

    if-nez v0, :cond_0

    const-string v0, "DiscoverDeepLinkController"

    const-string v1, "DISCOVER-LINK: %s - Icon load ignored"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v0, v1, v4}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v3

    :goto_0
    return-void

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, v0, Ladl$c;->a:Z

    iget-object v4, v0, Ladl$c;->e:Ladl$a;

    if-eqz v4, :cond_1

    const-string v4, "DiscoverDeepLinkController"

    const-string v5, "DISCOVER-LINK: %s - Icon load finished with success? %b"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v7, 0x1

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v5, v6}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v0, Ladl$c;->e:Ladl$a;

    invoke-interface {v4, p4}, Ladl$a;->a(Z)V

    :cond_1
    invoke-static {v0}, Ladl;->a(Ladl$c;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v0, "DiscoverDeepLinkController"

    const-string v4, "DISCOVER-LINK: %s fully loaded after intro media"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-static {v0, v4, v5}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v1, Ladl;->j:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    iget-object v1, v1, Ladl;->j:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method
