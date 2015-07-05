.class public Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$FontChangedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FontChangedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;


# direct methods
.method protected constructor <init>(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)V
    .locals 0

    .prologue
    .line 386
    iput-object p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$FontChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getTypeface(I)Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 394
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_font_selection_normal:I

    if-ne p1, v0, :cond_0

    .line 395
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 403
    :goto_0
    return-object v0

    .line 396
    :cond_0
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_font_selection_monospace:I

    if-ne p1, v0, :cond_1

    .line 397
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    .line 398
    :cond_1
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_font_selection_serif:I

    if-ne p1, v0, :cond_2

    .line 399
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 400
    :cond_2
    sget v0, Lcom/brightcove/player/R$id;->closed_captioning_options_font_selection_sans_serif:I

    if-ne p1, v0, :cond_3

    .line 401
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    .line 403
    :cond_3
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 2

    .prologue
    .line 389
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$FontChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    # getter for: Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->closedCaptioningStyleBuilder:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    invoke-static {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->access$200(Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$FontChangedListener;->getTypeface(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;->setTypeface(Landroid/graphics/Typeface;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    .line 390
    iget-object v0, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog$FontChangedListener;->this$0:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;

    invoke-virtual {v0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningOptionsDialog;->updateCaptions()V

    .line 391
    return-void
.end method
