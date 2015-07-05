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

.field private final e:Lajx;

.field private final f:Lazn;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    new-instance v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    invoke-direct {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;-><init>()V

    sput-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 95
    new-instance v0, Lajx;

    invoke-direct {v0}, Lajx;-><init>()V

    invoke-static {}, Lazn;->a()Lazn;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;-><init>(Lajx;Lazn;)V

    .line 96
    return-void
.end method

.method private constructor <init>(Lajx;Lazn;)V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a:Ljava/util/Set;

    .line 84
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->UNKNOWN:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    iput-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 100
    iput-object p1, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->e:Lajx;

    .line 101
    iput-object p2, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->f:Lazn;

    .line 102
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->f:Lazn;

    invoke-virtual {v0, p0}, Lazn;->addObserver(Ljava/util/Observer;)V

    .line 103
    return-void
.end method

.method public static a()Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->d:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lcgc;
        .end annotation
    .end param

    .prologue
    .line 121
    invoke-static {p1}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->fromString(Ljava/lang/String;)Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    move-result-object v0

    iput-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->b:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    .line 122
    iput-object p4, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->h:Ljava/lang/String;

    .line 123
    iput-object p5, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->i:Ljava/lang/String;

    .line 124
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->g:Ljava/lang/String;

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Lajx;->h(J)V

    .line 128
    :cond_0
    iput-object p2, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->g:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->c:Ljava/lang/String;

    .line 132
    iget-object v1, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a:Ljava/util/Set;

    monitor-enter v1

    .line 133
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

    .line 134
    invoke-interface {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$a;->a()V

    goto :goto_0

    .line 136
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

    .line 138
    invoke-static {p4}, Lajx;->n(Ljava/lang/String;)V

    .line 139
    invoke-static {p5}, Lajx;->o(Ljava/lang/String;)V

    .line 140
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->f:Lazn;

    invoke-virtual {v0}, Lazn;->b()Ljava/lang/String;

    move-result-object v0

    .line 148
    if-eqz v0, :cond_0

    .line 151
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Lajx;->aM()Ljava/lang/String;

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1
    .annotation build Lcgc;
    .end annotation

    .prologue
    .line 187
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 188
    invoke-static {}, Lajx;->aN()Ljava/lang/String;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public final update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 195
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lcom/snapchat/android/database/SharedPreferenceKey;->DEVELOPER_OPTIONS_CUSTOM_DISCOVER_ENDPOINT:Lcom/snapchat/android/database/SharedPreferenceKey;

    invoke-virtual {v0}, Lcom/snapchat/android/database/SharedPreferenceKey;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->g:Ljava/lang/String;

    .line 198
    sget-object v0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->SUPPORTED:Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;

    invoke-virtual {v0}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager$Compatibility;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->f:Lazn;

    invoke-virtual {v0}, Lazn;->b()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->h:Ljava/lang/String;

    iget-object v5, p0, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->i:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/snapchat/android/discover/util/network/DiscoverEndpointManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void
.end method
