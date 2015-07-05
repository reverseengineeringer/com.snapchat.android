.class final Labg$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Labg;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Labg;


# direct methods
.method constructor <init>(Labg;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Labg$2;->a:Labg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 36
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 37
    return-void
.end method
