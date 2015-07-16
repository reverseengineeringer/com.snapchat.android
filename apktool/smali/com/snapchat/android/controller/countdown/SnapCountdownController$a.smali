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
.field public final a:Lzs;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 325
    new-instance v0, Lzs;

    invoke-direct {v0}, Lzs;-><init>()V

    invoke-direct {p0, v0}, Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;-><init>(Lzs;)V

    .line 326
    return-void
.end method

.method private constructor <init>(Lzs;)V
    .locals 0

    .prologue
    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 329
    iput-object p1, p0, Lcom/snapchat/android/controller/countdown/SnapCountdownController$a;->a:Lzs;

    .line 330
    return-void
.end method
