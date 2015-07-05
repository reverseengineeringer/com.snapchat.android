.class public Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_BACKGROUND_COLOR:I = 0x0

.field public static final DEFAULT_EDGE_ATTRIBUTE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

.field public static final DEFAULT_EDGE_COLOR:I = 0x0

.field public static final DEFAULT_HIGHLIGHT_COLOR:I = 0x0

.field public static final DEFAULT_TEXT_COLOR:I = -0x1

.field public static final DEFAULT_TEXT_SIZE:F = 14.0f

.field public static final DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

.field public static final OPACITY_OPAQUE:I = 0xff

.field public static final OPACITY_SEMI_TRANSPARENT:I

.field public static final OPACITY_SEMI_TRANSPARENT_LIGHT:I

.field public static final OPACITY_TRANSPARENT:I


# instance fields
.field public final backgroundColor:I

.field public final edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

.field public final edgeColor:I

.field public final highlightColor:I

.field public final textColor:I

.field public final textSize:F

.field public final typeface:Landroid/graphics/Typeface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->DEFAULT_TYPEFACE:Landroid/graphics/Typeface;

    .line 33
    sget-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;->NONE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    sput-object v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->DEFAULT_EDGE_ATTRIBUTE:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 37
    const v0, 0x433f4000    # 191.25f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->OPACITY_SEMI_TRANSPARENT:I

    .line 38
    const/high16 v0, 0x427f0000    # 63.75f

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->OPACITY_SEMI_TRANSPARENT_LIGHT:I

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sput v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->OPACITY_TRANSPARENT:I

    return-void
.end method

.method protected constructor <init>(IILandroid/graphics/Typeface;IFLcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;I)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput p1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->backgroundColor:I

    .line 169
    iput p2, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->highlightColor:I

    .line 170
    iput-object p3, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->typeface:Landroid/graphics/Typeface;

    .line 171
    iput p4, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->textColor:I

    .line 172
    iput p5, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->textSize:F

    .line 173
    iput-object p6, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    .line 174
    iput p7, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->edgeColor:I

    .line 175
    return-void
.end method

.method public static newBuilder(Landroid/content/Context;)Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;
    .locals 1

    .prologue
    .line 161
    new-instance v0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;

    invoke-direct {v0, p0}, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<CaptionsStyle backgroundColor="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->backgroundColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", highlightColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->highlightColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", typeface="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->typeface:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->textSize:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", textColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->textColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", edgeAttribute="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->edgeAttribute:Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningTextView$EdgeAttribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", edgeColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/brightcove/player/captioning/BrightcoveClosedCaptioningStyle;->edgeColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
