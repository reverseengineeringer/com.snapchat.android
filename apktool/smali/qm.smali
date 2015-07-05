.class public final Lqm;
.super Lth;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqm$a;
    }
.end annotation


# instance fields
.field final mFriendName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcgb;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0}, Lth;-><init>()V

    .line 18
    iput-object p1, p0, Lqm;->mFriendName:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lqm$a;

    invoke-direct {v0, p0}, Lqm$a;-><init>(Lqm;)V

    return-object v0
.end method

.method protected final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    const-string v0, "/cash/check_recipient_eligible"

    return-object v0
.end method
