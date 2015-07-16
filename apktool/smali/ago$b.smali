.class public final Lago$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lago;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field b:Landroid/graphics/Bitmap;

.field final synthetic c:Lago;


# direct methods
.method constructor <init>(Lago;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lago$b;->c:Lago;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p2, p0, Lago$b;->b:Landroid/graphics/Bitmap;

    .line 36
    return-void
.end method
