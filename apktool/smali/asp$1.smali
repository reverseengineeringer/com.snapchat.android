.class public final Lasp$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:Lagg$a;

.field final synthetic b:Lagk;

.field final synthetic c:Lasp;


# direct methods
.method public constructor <init>(Lasp;Lagg$a;Lagk;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lasp$1;->c:Lasp;

    iput-object p2, p0, Lasp$1;->a:Lagg$a;

    iput-object p3, p0, Lasp$1;->b:Lagk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lasp$1;->a:Lagg$a;

    iget-object v1, p0, Lasp$1;->b:Lagk;

    invoke-interface {v0, v1, p2}, Lagg$a;->a(Lagk;Z)V

    .line 78
    return-void
.end method
