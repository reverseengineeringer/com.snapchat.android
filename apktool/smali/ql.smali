.class public final Lql;
.super Ltx;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lql$a;
    }
.end annotation


# instance fields
.field final mFriend:Ljava/lang/String;

.field final mHide:Z

.field private final mUserPrefs:Lakr;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lql;-><init>(Ljava/lang/String;Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lakr;->a()Lakr;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lql;-><init>(Ljava/lang/String;ZLakr;)V

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ZLakr;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ltx;-><init>()V

    .line 32
    iput-object p1, p0, Lql;->mFriend:Ljava/lang/String;

    .line 33
    iput-boolean p2, p0, Lql;->mHide:Z

    .line 34
    iput-object p3, p0, Lql;->mUserPrefs:Lakr;

    .line 35
    return-void
.end method


# virtual methods
.method protected final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    const-string v0, "/loq/friend_hide"

    return-object v0
.end method

.method public final synthetic getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lql$a;

    invoke-direct {v0, p0}, Lql$a;-><init>(Lql;)V

    return-object v0
.end method

.method public final onResult(Lus;)V
    .locals 1
    .param p1    # Lus;
        .annotation build Lchc;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-super {p0, p1}, Ltx;->onResult(Lus;)V

    .line 65
    invoke-virtual {p1}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-static {}, Lakr;->aB()V

    .line 68
    :cond_0
    return-void
.end method
