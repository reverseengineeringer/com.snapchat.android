.class public final Loa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# static fields
.field private static final INSTANCE:Loa;

.field private static final TAG:Ljava/lang/String; = "RecentStoryReplyAnalyticsManager"


# instance fields
.field public mHasReplied:Z

.field public mRecentStoryReplyEvent:Lbdu;

.field public final mUserProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 25
    new-instance v0, Loa;

    sget-object v1, Lakp;->UNSAFE_USER_PROVIDER:Ljavax/inject/Provider;

    invoke-direct {v0, v1}, Loa;-><init>(Ljavax/inject/Provider;)V

    sput-object v0, Loa;->INSTANCE:Loa;

    return-void
.end method

.method private constructor <init>(Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lakp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Loa;->mHasReplied:Z

    .line 35
    iput-object p1, p0, Loa;->mUserProvider:Ljavax/inject/Provider;

    .line 36
    return-void
.end method

.method public static a()Loa;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Loa;->INSTANCE:Loa;

    return-object v0
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Loa;->mRecentStoryReplyEvent:Lbdu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Loa;->mRecentStoryReplyEvent:Lbdu;

    if-eqz v0, :cond_0

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "markHasReplied true "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Loa;->mRecentStoryReplyEvent:Lbdu;

    iget-object v1, v1, Lbdu;->friendUsername:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Loa;->mHasReplied:Z

    .line 67
    :cond_0
    return-void
.end method

.method public final d()V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Loa;->mRecentStoryReplyEvent:Lbdu;

    if-nez v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopReplyingAndReport REPORTING "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Loa;->mHasReplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 86
    iget-boolean v0, p0, Loa;->mHasReplied:Z

    invoke-static {v0}, Lcom/snapchat/android/analytics/AnalyticsEvents;->f(Z)V

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Loa;->mRecentStoryReplyEvent:Lbdu;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Loa;->mHasReplied:Z

    goto :goto_0
.end method
