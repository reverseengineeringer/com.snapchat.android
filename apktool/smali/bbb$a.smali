.class public final Lbbb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbbb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final mClock:Lbhk;

.field final mUiHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lbhk;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    iput-object p1, p0, Lbbb$a;->mUiHandler:Landroid/os/Handler;

    .line 104
    iput-object p2, p0, Lbbb$a;->mClock:Lbhk;

    .line 105
    return-void
.end method
