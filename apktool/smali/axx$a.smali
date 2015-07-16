.class final Laxx$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laxx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public overlayBitmap:Landroid/graphics/Bitmap;

.field final synthetic this$0:Laxx;

.field public videoData:[B


# direct methods
.method private constructor <init>(Laxx;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    iput-object p1, p0, Laxx$a;->this$0:Laxx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object v0, p0, Laxx$a;->videoData:[B

    .line 57
    iput-object v0, p0, Laxx$a;->overlayBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method synthetic constructor <init>(Laxx;B)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Laxx$a;-><init>(Laxx;)V

    return-void
.end method
