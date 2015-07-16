.class public final Lqh;
.super Ltx;
.source "SourceFile"

# interfaces
.implements Lui$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lqh$b;,
        Lqh$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltx;",
        "Lui$b",
        "<",
        "Lqh$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final MIN_USERNAME_LENGTH:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FriendExistsTask"


# instance fields
.field private mBus:Lcom/squareup/otto/Bus;

.field public final mFriend:Lcom/snapchat/android/model/Friend;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/model/Friend;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lqh;-><init>(Lcom/snapchat/android/model/Friend;Lcom/squareup/otto/Bus;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Lcom/snapchat/android/model/Friend;Lcom/squareup/otto/Bus;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ltx;-><init>()V

    .line 35
    iput-object p1, p0, Lqh;->mFriend:Lcom/snapchat/android/model/Friend;

    .line 36
    iput-object p2, p0, Lqh;->mBus:Lcom/squareup/otto/Bus;

    .line 37
    const-class v0, Lqh$b;

    invoke-virtual {p0, v0, p0}, Lqh;->registerCallback(Ljava/lang/Class;Lui$b;)V

    .line 38
    return-void
.end method


# virtual methods
.method public final getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-string v0, "/bq/user_exists"

    return-object v0
.end method

.method public final synthetic getRequestPayload()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lqh$a;

    invoke-direct {v0, p0}, Lqh$a;-><init>(Lqh;)V

    return-object v0
.end method

.method public final synthetic onJsonResult(Ljava/lang/Object;Lus;)V
    .locals 4

    .prologue
    .line 22
    check-cast p1, Lqh$b;

    invoke-virtual {p2}, Lus;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->DOES_NOT_EXIST:Lcom/snapchat/android/model/Friend$SuggestState;

    iget-boolean v1, p1, Lqh$b;->exists:Z

    if-eqz v1, :cond_1

    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->EXISTS:Lcom/snapchat/android/model/Friend$SuggestState;

    :cond_0
    :goto_0
    iget-object v1, p0, Lqh;->mFriend:Lcom/snapchat/android/model/Friend;

    iput-object v0, v1, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    iget-object v0, p0, Lqh;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdx;

    invoke-direct {v1}, Lbdx;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    :goto_1
    return-void

    :cond_1
    iget-boolean v1, p1, Lqh$b;->throttled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lqh$b;->logged:Z

    if-nez v1, :cond_0

    sget-object v0, Lcom/snapchat/android/model/Friend$SuggestState;->FAILED:Lcom/snapchat/android/model/Friend$SuggestState;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lqh;->mFriend:Lcom/snapchat/android/model/Friend;

    sget-object v1, Lcom/snapchat/android/model/Friend$SuggestState;->FAILED:Lcom/snapchat/android/model/Friend$SuggestState;

    iput-object v1, v0, Lcom/snapchat/android/model/Friend;->mSuggestionState:Lcom/snapchat/android/model/Friend$SuggestState;

    iget-object v0, p0, Lqh;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lbdx;

    invoke-direct {v1}, Lbdx;-><init>()V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lus;->e()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_3
    iget-object v0, p0, Lqh;->mBus:Lcom/squareup/otto/Bus;

    new-instance v1, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    sget-object v2, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;->TOAST:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    const v3, 0x7f0c01d0

    invoke-direct {v1, v2, v3}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method
