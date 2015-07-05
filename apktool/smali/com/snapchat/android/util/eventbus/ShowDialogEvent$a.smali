.class public final Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/util/eventbus/ShowDialogEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private mDialogType:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

.field public mMessage:Ljava/lang/String;

.field public mMessageResId:I

.field public mTitleResId:I

.field public mYesNoAlertListener:Lcom/snapchat/android/util/AlertDialogUtils$a;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mDialogType:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    .line 36
    return-void
.end method


# virtual methods
.method public final a()Lcom/snapchat/android/util/eventbus/ShowDialogEvent;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;

    iget-object v1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mDialogType:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    iget v2, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mMessageResId:I

    invoke-direct {v0, v1, v2}, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;-><init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V

    .line 60
    iget-object v1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mMessage:Ljava/lang/String;

    iput-object v1, v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->message:Ljava/lang/String;

    .line 61
    iget v1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mTitleResId:I

    iput v1, v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->titleResId:I

    .line 62
    iget-object v1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;->mYesNoAlertListener:Lcom/snapchat/android/util/AlertDialogUtils$a;

    iput-object v1, v0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->yesNoAlertListener:Lcom/snapchat/android/util/AlertDialogUtils$a;

    .line 63
    return-object v0
.end method
