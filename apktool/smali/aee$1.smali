.class final Laee$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lavy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Laee;


# direct methods
.method constructor <init>(Laee;)V
    .locals 0

    .prologue
    .line 133
    iput-object p1, p0, Laee$1;->a:Laee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lavo;Lavx;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Laee$1;->a:Laee;

    iget-object v0, v0, Laee;->b:Landroid/widget/ImageView;

    new-instance v1, Laee$1$1;

    invoke-direct {v1, p0}, Laee$1$1;-><init>(Laee$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 142
    return-void
.end method
