.class public final Lcom/snapchat/android/util/eventbus/ShowDialogEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snapchat/android/util/eventbus/ShowDialogEvent$a;,
        Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;
    }
.end annotation


# instance fields
.field public dialogType:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

.field public message:Ljava/lang/String;

.field public stringResId:I

.field public titleResId:I

.field public yesNoAlertListener:Lcom/snapchat/android/util/AlertDialogUtils$a;


# direct methods
.method public constructor <init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;I)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p2, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->stringResId:I

    .line 24
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->dialogType:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    .line 25
    return-void
.end method

.method public constructor <init>(Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->message:Ljava/lang/String;

    .line 19
    iput-object p1, p0, Lcom/snapchat/android/util/eventbus/ShowDialogEvent;->dialogType:Lcom/snapchat/android/util/eventbus/ShowDialogEvent$DialogType;

    .line 20
    return-void
.end method
