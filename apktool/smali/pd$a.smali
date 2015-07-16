.class final Lpd$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field mBitmap:Landroid/graphics/Bitmap;

.field mName:Ljava/lang/String;

.field final synthetic this$0:Lpd;


# direct methods
.method constructor <init>(Lpd;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lpd$a;->this$0:Lpd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p2, p0, Lpd$a;->mName:Ljava/lang/String;

    .line 55
    iput-object p3, p0, Lpd$a;->mBitmap:Landroid/graphics/Bitmap;

    .line 56
    return-void
.end method
