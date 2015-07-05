.class public final Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/android/controller/countdown/SnapCountdownController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Lyw;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 309
    new-instance v0, Lyw;

    invoke-direct {v0}, Lyw;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;-><init>(Lyw;)V

    .line 310
    return-void
.end method

.method private constructor <init>(Lyw;)V
    .locals 0

    .prologue
    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 313
    iput-object p1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;->a:Lyw;

    .line 314
    return-void
.end method
