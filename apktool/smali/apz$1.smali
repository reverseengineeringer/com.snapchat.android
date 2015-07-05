.class final Lapz$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapz;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapz;


# direct methods
.method constructor <init>(Lapz;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lapz$1;->a:Lapz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 42
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 43
    iget-object v0, p0, Lapz$1;->a:Lapz;

    invoke-virtual {v0}, Lapz;->a()V

    .line 44
    return-void
.end method
