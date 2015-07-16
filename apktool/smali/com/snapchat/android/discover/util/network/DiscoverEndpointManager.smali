.class public final Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$a;,
        Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

.field public c:Ljava/lang/String;

.field private final e:Lakr;

.field private final f:Lbam;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-direct {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 98
    new-instance v0, Lakr;

    invoke-direct {v0}, Lakr;-><init>()V

    invoke-static {}, Lbam;->a()Lbam;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;-><init>(Lakr;Lbam;)V

    .line 99
    return-void
.end method

.method private constructor <init>(Lakr;Lbam;)V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a:Ljava/util/Set;

    .line 87
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->UNKNOWN:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    iput-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 103
    iput-object p1, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->e:Lakr;

    .line 104
    iput-object p2, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->f:Lbam;

    .line 105
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->f:Lbam;

    invoke-virtual {v0, p0}, Lbam;->addObserver(Ljava/util/Observer;)V

    .line 106
    return-void
.end method

.method public static a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lchd;
        .end annotation
    .end param

    .prologue
    .line 124
    invoke-static {p1}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->fromString(Ljava/lang/String;)Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 125
    iput-object p4, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->h:Ljava/lang/String;

    .line 126
    iput-object p5, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->i:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->g:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 129
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lakr;->h(J)V

    .line 131
    :cond_0
    iput-object p2, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->g:Ljava/lang/String;

    .line 133
    iput-object p3, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->c:Ljava/lang/String;

    .line 135
    iget-object v1, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a:Ljava/util/Set;

    monitor-enter v1

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$a;

    .line 137
    invoke-interface {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$a;->a()V

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    invoke-static {p4}, Lakr;->n(Ljava/lang/String;)V

    .line 142
    invoke-static {p5}, Lakr;->o(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->f:Lbam;

    invoke-virtual {v0}, Lbam;->b()Ljava/lang/String;

    move-result-object v0

    .line 151
    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 204
    invoke-static {}, Lakr;->aL()Ljava/lang/String;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lchd;
    .end annotation

    .prologue
    .line 214
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 215
    invoke-static {}, Lakr;->aM()Ljava/lang/String;

    move-result-object v0

    .line 217
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 222
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_DISCOVER_CUSTOM_ENDPOINT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->g:Ljava/lang/String;

    .line 225
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->f:Lbam;

    invoke-virtual {v0}, Lbam;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->i:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    return-void
.end method
