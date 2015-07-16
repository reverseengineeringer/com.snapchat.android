.class public final Lato$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lato;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lahd$a;

.field final synthetic b:Lahh;

.field final synthetic c:Lato;


# direct methods
.method public constructor <init>(Lato;Lahd$a;Lahh;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lato$1;->c:Lato;

    iput-object p2, p0, Lato$1;->a:Lahd$a;

    iput-object p3, p0, Lato$1;->b:Lahh;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lato$1;->a:Lahd$a;

    iget-object v1, p0, Lato$1;->b:Lahh;

    invoke-interface {v0, v1, p2}, Lahd$a;->a(Lahh;Z)V

    .line 78
    return-void
.end method
