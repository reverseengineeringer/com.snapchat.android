.class public Lcom/snapchat/android/ui/caption/CaptionColorPickerView;
.super Lcom/snapchat/android/ui/ColorPickerView;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Lcom/snapchat/android/ui/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 2

    .prologue
    .line 19
    invoke-static {}, Lbbo;->a()Lcom/squareup/otto/Bus;

    move-result-object v0

    new-instance v1, Laqo;

    invoke-direct {v1, p1}, Laqo;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/squareup/otto/Bus;->a(Ljava/lang/Object;)V

    .line 20
    return-void
.end method
