.class public final Lnj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final INSTANCE:Lnj;

.field private static final TAG:Ljava/lang/String; = "RecentStoryReplyAnalyticsManager"


# instance fields
.field public mHasReplied:Z

.field public mRecentStoryReplyEvent:Lbcu;

.field public final mUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Lnj;

    sget-object v1, Lajv;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {v0, v1}, Lnj;-><init>(Ljavax/inject/Provider;)V

    sput-object v0, Lnj;->INSTANCE:Lnj;

    return-void
.end method

.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lajv;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnj;->mHasReplied:Z

    .line 35
    iput-object p1, p0, Lnj;->mUserProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method

.method public static a()Lnj;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lnj;->INSTANCE:Lnj;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lnj;->mRecentStoryReplyEvent:Lbcu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 63
    iget-object v0, p0, Lnj;->mRecentStoryReplyEvent:Lbcu;

    if-eqz v0, :cond_0

    .line 64
    const-string v0, "RecentStoryReplyAnalyticsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "markHasReplied true "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnj;->mRecentStoryReplyEvent:Lbcu;

    iget-object v2, v2, Lbcu;->friendUsername:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnj;->mHasReplied:Z

    .line 67
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 81
    iget-object v0, p0, Lnj;->mRecentStoryReplyEvent:Lbcu;

    if-nez v0, :cond_0

    .line 82
    const-string v0, "RecentStoryReplyAnalyticsManager"

    const-string v1, "stopReplyingAndReport null event, nothing to do"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string v0, "RecentStoryReplyAnalyticsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopReplyingAndReport REPORTING "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lnj;->mHasReplied:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/snapchat/android/Timber;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 86
    iget-boolean v0, p0, Lnj;->mHasReplied:Z

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->f(Z)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lnj;->mRecentStoryReplyEvent:Lbcu;

    .line 88
    iput-boolean v3, p0, Lnj;->mHasReplied:Z

    goto :goto_0
.end method
