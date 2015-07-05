.class final Lafa$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lafa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field a:Landroid/widget/TextView;

.field final synthetic b:Lafa;


# direct methods
.method constructor <init>(Lafa;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lafa$b;->b:Lafa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
