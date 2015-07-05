.class public final Laem$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/lang/String;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Laem$a;->a:Landroid/view/View;

    .line 295
    iput-object p2, p0, Laem$a;->b:Ljava/lang/String;

    .line 296
    iput-boolean p3, p0, Laem$a;->c:Z

    .line 297
    return-void
.end method
